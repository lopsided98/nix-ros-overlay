{
  lib,
  buildPythonPackage,
  fetchPypi,
  colcon-core,
}:

buildPythonPackage rec {
  pname = "colcon-recursive-crawl";
  version = "0.2.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-/KX2GSFNIDBtqvAS+ROZ1NO2BTZLEh5d+AOZQyxVxgM=";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to recursively crawl for packages.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
