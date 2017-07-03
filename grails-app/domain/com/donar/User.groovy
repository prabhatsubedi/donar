package com.donar

//unnecessary if passwordEncoder is defined `def passwordEncoder`
import org.springframework.security.crypto.password.PasswordEncoder

class User {

    //This could be defined as `def passwordEncoder` as well and the import would be unnecessary
    PasswordEncoder passwordEncoder

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean credentialsExpired
    String fullName
    String email
    Date birthDate
    String phoneNumber
    String streetAddress
    String state
    String city
    String zipCode
    String country
    String bloodType
    String gender
    String age

    static constraints = {
        username blank: false, unique: true
        password blank: false
        fullName blank: false
        email blank: false
        birthDate nullable: true, blank: true
        phoneNumber nullable: true, blank: true
        streetAddress nullable: true, blank: true
        state nullable: true, blank: true
        city nullable: true, blank: true
        zipCode nullable: true, blank: true
        country nullable: true, blank: true
    }

    static mapping = {
        password column: '`password`'
    }

    static transients = ['passwordEncoder']

    Set<Authority> getAuthorities() {
        UserAuthority.findAllByUser(this).collect { it.authority }
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = passwordEncoder.encode(password)
    }

}
