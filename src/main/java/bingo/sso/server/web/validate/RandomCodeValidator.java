package bingo.sso.server.web.validate;

import javax.servlet.http.HttpServletRequest;

import bingo.sso.core.authentication.form.IRandomCodeValidator;

public class RandomCodeValidator implements IRandomCodeValidator{

	public boolean validateCode(String randomCode, HttpServletRequest req) {
		return ValidateCodeUtil.validateCode(randomCode, req);
	}


}
