{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-recursive-crawl";
  version = "0.2.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1g27r4ca6y08rby1jgvfnwpkklmg66m5dx59mmpz4pjwqlp5r5fw";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to recursively crawl for packages.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
