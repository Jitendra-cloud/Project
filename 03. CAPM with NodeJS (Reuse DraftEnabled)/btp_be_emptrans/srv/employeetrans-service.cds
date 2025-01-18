using { btp.betrans as bb } from '../db/data-model';

service EmployeeTransactional @( impl: './employee.js') {
    entity Employees as select from bb.EMP_DUMMY;

    entity EmployeeReuse as select from bb.EMP;

    entity Department as select from bb.DEPARTMENT;
    
    @readonly entity EmployeeDashboard as select from bb.EMP_DASHBOARD;

    entity EmployeeLocal as select from bb.EMP_LOCAL_INFO
}