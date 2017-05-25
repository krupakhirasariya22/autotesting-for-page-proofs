package ru.martha.autotesting.entity;

import lombok.Getter;
import lombok.Setter;
import ru.martha.autotesting.enums.RoleCode;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USER_ROLES")
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    @Getter
    @Setter
    private long id;

    @Column(name = "NAME", nullable = false, unique = true)
    @Getter
    @Setter
    private String name;

    @Column(name = "ROLE_CODE", nullable = false)
    @Getter
    @Setter
    private int code;

    @Transient
    private RoleCode roleCode;

    public RoleCode getRoleCode() {
        if (this.roleCode == null) {
            roleCode = RoleCode.getByCode(this.code);
        }
        return roleCode;
    }
}
