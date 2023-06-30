package pd.workshop.singlesignonassignment.config;

import com.google.common.collect.Sets;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.Set;
import java.util.stream.Collectors;

import static pd.workshop.singlesignonassignment.config.AppUserPermission.*;

public enum AppUserRole {
    USER(Sets.newHashSet()),
    ADMIN(Sets.newHashSet(
            COURSE_READ,
            COURSE_WRITE,
            EMPLOYEE_READ,
            EMPLOYEE_WRITE)),
    EMPLOYEE(Sets.newHashSet(
            COURSE_READ,
            EMPLOYEE_READ
            ));

    private final Set<AppUserPermission> permissions;
    AppUserRole(Set<AppUserPermission> permissions) {
        this.permissions=permissions;
    }
    public Set<AppUserPermission> getPermissions() {
        return permissions;
    }

    public Set<SimpleGrantedAuthority> getGrantedAuthorities(){
        Set<SimpleGrantedAuthority>   permissionSet
                = getPermissions()
                        .stream()
                        .map(permission ->
                                new SimpleGrantedAuthority(permission.getPermission()))
                        .collect(Collectors.toSet());

        permissionSet.add(
                new SimpleGrantedAuthority("ROLE_"+this.name()));
        return permissionSet;
    }
}
