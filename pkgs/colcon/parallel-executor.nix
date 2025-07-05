{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-parallel-executor";
  version = "0.3.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-5xN/yvTGHbeSlV/WQb+tfbrUtBkoxrgf+Hp4M54RZkQ=";
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
