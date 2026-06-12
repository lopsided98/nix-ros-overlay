{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-test-result";
  version = "0.3.8";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-4t2jGJlwm8ZQkOG+Q2KyZ9Qnhhy5PAHcxxo7lkqSDRA=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide information about the test results";
    homepage = "https://github.com/colcon/colcon-test-result";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
