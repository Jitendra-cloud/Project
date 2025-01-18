namespace btp.betrans;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity EMP_DUMMY : cuid, managed {
    NAME : String(255);
}

@cds.persistence.exists
entity EMP : cuid, managed {
    EMP_ID_EXT : String(255);
    NAME       : String(255);
    EMAIL_ID   : String(255);
    //DEPARTMENT_ID : String(36);
    DEPARTMENT : Association to one DEPARTMENT;
}

@cds.persistence.exists
entity DEPARTMENT : cuid, managed {
    NAME : String(50);
}

@cds.persistence.exists
entity EMP_DASHBOARD : cuid {
    EMP_ID_EXT      : String(255);
    NAME            : String(255);
    DEPARTMENT_NAME : String(50);
}

@cds.persistence.skip
entity EMP_LOCAL_INFO {
    key ID       : String(36);
        NAME     : String(255);
        EMAIL_ID : String(255);
}
