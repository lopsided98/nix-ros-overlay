{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path
, colcon-test-result, cmake }:

buildPythonPackage rec {
  pname = "colcon-cmake";
  version = "0.2.27";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-9XlFUMp/n/tFVd5FQiflZqC+tciIHXZQnbMze5k3DyY=";
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

  meta = with lib; {
    description = "An extension for colcon-core to support CMake projects.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
