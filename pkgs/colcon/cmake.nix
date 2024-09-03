{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path
, colcon-test-result, cmake }:

buildPythonPackage rec {
  pname = "colcon-cmake";
  version = "0.2.28";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-XpEIkBSNnTx/gvXA6XkER44OC/FWt4ZykJnq1z1uxPA=";
  };

  postPatch = ''
    substituteInPlace colcon_cmake/task/cmake/__init__.py \
      --replace-fail "'cmake'" "'${cmake}/bin/cmake'"
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
