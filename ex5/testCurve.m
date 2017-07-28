function [error_test] = ...
    validationCurve(X, y, Xtest, ytest, lambda)

m = size(X, 1);
m_test = size(Xtest, 1);
X1 = [ones(m, 1) X];
Xtest1 = [ones(m_test, 1) Xtest];
theta = trainLinearReg(X1, y, lambda);
error_test = sum((Xtest1 * theta - ytest) .^ 2) / (2.0 * m_test);

% =========================================================================

end
