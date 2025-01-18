// Starting with Node js
const cds = require('@sap/cds');
const lo_empHandler = require('./EmployeeHandler');

module.exports = cds.service.impl( srvdj => {
    // Add implementation for EmployeeLocal
    srvdj.on( 'READ', 'EmployeeLocal', lo_empHandler._getEmployeeDetails);
});