package com.cafe24.pjmall.validator.constraint;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.cafe24.pjmall.validator.IdValidator;


@Retention(RUNTIME)
@Target(ElementType.FIELD)
@Constraint(validatedBy=IdValidator.class)
public @interface ValidId {
	String message() default "아이디는 특수문자가 들어가지 않게 2~14자 사이로 입력해주세요.";
	
	Class<?>[] groups() default {};
	Class<? extends Payload>[] payload() default {};
	
}
