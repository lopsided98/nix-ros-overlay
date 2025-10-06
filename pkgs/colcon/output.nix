{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-output";
  version = "0.2.13";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-RNLTSevbYWiLQeANVl6hoZno/Fwsd68nnPqsdNwBwE0=";
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
