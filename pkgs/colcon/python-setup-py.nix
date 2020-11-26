{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-python-setup-py";
  version = "0.2.7";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0ba1vq5sm2rbddasl85qx5mi7chcz8s1drnr0rvpj0a3bh497hpf";
  };

  propagatedBuildInputs = [ colcon-core setuptools ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

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
