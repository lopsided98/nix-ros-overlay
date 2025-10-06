{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-parallel-executor";
  version = "0.4.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-UwlL4kAQo7vCUD3Ck544tcm/oPKXfFiWk3d6CTPsRF0=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to process packages in parallel";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
