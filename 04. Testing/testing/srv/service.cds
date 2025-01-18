using {btp.betrans as bb} from '../db/schema';

service EmployeeTransactional @(impl: './employee.js') {
    @odata.draft.enabled: true
    entity Employees         as select from bb.EMP_DUMMY;

    @odata.draft.enabled: true
    entity EmployeeReuse     as select from bb.EMP;

    @odata.draft.enabled: true
    entity Department        as select from bb.DEPARTMENT;

    @odata.draft.enabled: true
    entity EmployeeDashboard as select from bb.EMP_DASHBOARD;

    @odata.draft.enabled: true
    entity Employeedb        as select from bb.EMPLOYEEDTBS;
}
