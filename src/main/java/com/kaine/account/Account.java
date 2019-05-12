package com.kaine.account;

import lombok.Data;
import org.springframework.data.annotation.Id;

import java.math.BigDecimal;

@Data
class Account {

    @Id
    private Integer id;
    private Integer number;
    private BigDecimal amount;
}
