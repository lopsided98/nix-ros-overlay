{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-devtools";
  version = "0.2.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-OhQb2+RKzvdK0Shmc4VoRrwP6EDm4As7OKWi/pMk8qI=";
  };

  propagatedBuildInputs = [
    colcon-core
  ];

  meta = with lib; {
    description = "Extension for colcon to provide information about all extension points and extensions.";
    homepage = "https://github.com/colcon/colcon-devtools";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
