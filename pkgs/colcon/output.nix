{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-output";
  version = "0.2.14";

  src = fetchPypi {
    inherit version;
    pname = "colcon_output";
    hash = "sha256-IetY7i/i33bhIbpI6wIsYFi/JMvW1mtDP709+w+YLEc=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to customize the output in various ways";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
