// Place your Spring DSL code here
import donar.SecurityConfiguration
import donar.GormUserDetailsService
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
beans = {
    webSecurityConfiguration(SecurityConfiguration)
    passwordEncoder(BCryptPasswordEncoder)
    userDetailsService(GormUserDetailsService)
}
