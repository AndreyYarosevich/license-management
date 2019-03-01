package com.management.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Table(name = "accounting")
public class Accounting {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", length = 6, nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "software_id", nullable = false)
    private Software software;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "license_end", nullable = false)
    private LocalDate licenseEnd;


    public Accounting() {
    }

    public Accounting(Employee employee, Software software, LocalDate licenseEnd) {
        this.employee = employee;
        this.software = software;
        this.licenseEnd = licenseEnd;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Software getSoftware() {
        return software;
    }

    public void setSoftware(Software software) {
        this.software = software;
    }

    public LocalDate getLicenseEnd() {
        return licenseEnd;
    }

    public void setLicenseEnd(LocalDate licenseEnd) {
        this.licenseEnd = licenseEnd;
    }
}
