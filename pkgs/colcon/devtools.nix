{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-devtools";
  version = "0.3.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-NK44d/YM4E9QrL8Rzq22YObq696Dfm2LA1q5+4yjbgU=";
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
