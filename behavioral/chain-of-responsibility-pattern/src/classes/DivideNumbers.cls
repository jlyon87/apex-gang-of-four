public with sharing class DivideNumbers implements Chain {
	private Chain nextChain;

	public void setNextChain(Chain nextChain) {
		this.nextChain = nextChain;
	}

	public void calculate(Numbers request) {
		if (request.getCalcWanted() == 'div') {
			System.debug(request.getNumber1() + ' / ' + request.getNumber2() + ' = ' + (request.getNumber1() / request.getNumber2()));
		} else {
			nextChain.calculate(request);
		}
	}
}
