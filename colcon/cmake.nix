{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, colcon-library-path
, colcon-test-result, cmake }:

buildPythonPackage rec {
  pname = "colcon-cmake";
  version = "0.2.13";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1xslh52d91zs0vsa10himckjh2frq54awxq6n68k6jv7h6yiyb7m";
  };

  postPatch = ''
    substituteInPlace colcon_cmake/task/cmake/__init__.py \
      --replace "'cmake'" "'${cmake}/bin/cmake'"
  '';

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    colcon-test-result
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to support CMake projects.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
