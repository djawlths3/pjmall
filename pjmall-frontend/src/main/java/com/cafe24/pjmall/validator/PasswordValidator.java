package com.cafe24.pjmall.validator;

import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.cafe24.pjmall.validator.constraint.ValidPassword;

public class PasswordValidator implements ConstraintValidator<ValidPassword, String> {
	private Pattern pattern = Pattern.compile("(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,20}"); 
	

	public boolean isValid(String value, ConstraintValidatorContext context) {
		if(value == null || "".contentEquals(value)) {
			return false;
		}
		return pattern.matcher( value ).matches();
		
	}

	public void initialize(ValidPassword constraintAnnotation) {
		// TODO Auto-generated method stub
		
	}

}
