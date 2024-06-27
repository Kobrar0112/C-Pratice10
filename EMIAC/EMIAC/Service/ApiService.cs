using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace EMIAC.Models
{
    public class ApiService
    {
        private readonly HttpClient _httpClient;

        public ApiService()
        {
            _httpClient = new HttpClient { BaseAddress = new Uri("https://localhost:7226") };
        }

        public async Task<Patient> GetPatientByPolisAsync(string poliss)
        {
            var response = await _httpClient.GetAsync("/api/Patients");
            if (response.IsSuccessStatusCode)
            {
                var patients = await response.Content.ReadAsAsync<List<Patient>>();
                if (patients != null)
                {
                    foreach (var patient in patients)
                    {
                        if (patient.OMS == poliss)
                        {
                            return patient;
                        }
                    }
                }
            }
            return null;
        }

        public async Task<Doctor> GetDoctorAsync(string login, string password)
        {
            var response = await _httpClient.GetAsync("/api/Doctors");
            if (response.IsSuccessStatusCode)
            {
                var doctors = await response.Content.ReadAsAsync<List<Doctor>>();
                if (doctors != null)
                {
                    foreach (var doctor in doctors)
                    {
                        if (doctor.DoctorEnterLogin.ToString() == login && doctor.DoctorEnterPassword == password)
                        {
                            return doctor;
                        }
                    }
                }
            }
            return null;
        }

        public async Task<Administrator> GetAdministratorAsync(string login, string password)
        {
            var response = await _httpClient.GetAsync("/api/Administrators");
            if (response.IsSuccessStatusCode)
            {
                var admins = await response.Content.ReadAsAsync<List<Administrator>>();
                if (admins != null)
                {
                    foreach (var admin in admins)
                    {
                        if (admin.AdminEnterLogin.ToString() == login && admin.AdminEnterPassword == password)
                        {
                            return admin;
                        }
                    }
                }
            }
            return null;
        }
    }

    public class Patient
    {
        public int ID_Patient { get; set; }
        public string OMS { get; set; }
        public string Surname { get; set; }
        public string Name { get; set; }
        public string MiddleName { get; set; }
        public DateTime BirthDate { get; set; }
        public string RegistrationAddress { get; set; }
    }

    public class Doctor
    {
        public int ID_Doctor { get; set; }
        public string DoctorSurname { get; set; }
        public string DoctorName { get; set; }
        public string DoctorMiddleName { get; set; }
        public string Speciality_ID { get; set; }
        public string DoctorEnterLogin { get; set; }
        public string DoctorEnterPassword { get; set; }
        public string WorkAddress { get; set; }
    }

    public class Administrator
    {
        public int ID_Administrator { get; set; }
        public string AdminSurname { get; set; }
        public string AdminName { get; set; }
        public string AdminMiddleName { get; set; }
        public string AdminEnterLogin { get; set; }
        public string AdminEnterPassword { get; set; }
    }
}