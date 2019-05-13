package com.kaine.customer;

import com.kaine.account.Account;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.util.Set;

@Data
class Customer {

    @Id
    private Integer id;
    private String firstName;
    private String lastName;
    private Set<Account> accountSet;
}
