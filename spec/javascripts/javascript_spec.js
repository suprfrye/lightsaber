describe("Canary test", function() {
  it("should work", function() {
    expect(true).toBe(true);
  });
});

describe("calculator test", function() {

  it("should exist", function() {
    expect(calculator).toBeDefined();
  });

  it("should have add", function() {
    expect(calculator.add).toBeDefined();
  });

  it("should have subtract", function() {
    expect(calculator.subtract).toBeDefined();
  });

  it("should have multiply", function() {
    expect(calculator.multiply).toBeDefined();
  });

  it("should have divide", function() {
    expect(calculator.divide).toBeDefined();
  });

  it("should add 2 numbers", function() {
    var num1 = 12, num2 = 3;
    expect(calculator.add(num1, num2)).toEqual(15);
  });

  it("should subtract 2 numbers", function() {
    var num1 = 12, num2 = 3;
    expect(calculator.subtract(num1, num2)).toEqual(9);
  });

  it("should multiply 2 numbers", function() {
    var num1 = 12, num2 = 3;
    expect(calculator.multiply(num1, num2)).toEqual(36);
  });

  it("should divide 2 numbers", function() {
    var num1 = 12, num2 = 3;
    expect(calculator.divide(num1, num2)).toEqual(4);
  });
});
