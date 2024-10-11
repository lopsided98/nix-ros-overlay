{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-python-setup-py";
  version = "0.2.9";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-TYurLgW6M04p7uNxX73kkCgTQu2OAA4lITDlxRkVODo=";
  };

  propagatedBuildInputs = [ colcon-core setuptools ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = ''
      An extension for colcon-core to identify packages with a setup.py file by
      introspecting the arguments to the setup() function call of setuptools.
    '';
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
