package pd.workshop.singlesignonassignment.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pd.workshop.singlesignonassignment.config.AppUserRole;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "User_Details")
public class User {
    @Id
    @GeneratedValue
    private Long id;

    private String username;
    private String password;
    private AppUserRole role;
}
