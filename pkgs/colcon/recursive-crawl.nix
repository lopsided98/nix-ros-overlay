{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-recursive-crawl";
  version = "0.2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "15hvvav0dgzdvbhql5v1q1abpr7z60lmd6vy33sayq1r40x1p8c0";
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
