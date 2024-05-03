/**
 * 
 * @Before(event = { "CREATE","UPDATE" }, entity = "StudentServiceService.School")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function (request) {
	// Your code here

	if (request.data.students) {
		request.data.SchoolStrength = request.data.students.length;
	}

	if (request.data.students) {
		request.data.students.forEach((studentInfo) => {
			if (!studentInfo.email) {
				studentInfo.email =
					studentInfo.firstName + "." + studentInfo.lastName + "@gmail.com";
			}
		});
	}
}