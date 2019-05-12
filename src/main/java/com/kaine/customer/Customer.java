package com.kaine.customer;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Data

class Customer {

    @Id
    private Integer id;
    private String firstName;
    private String lastName;
}
