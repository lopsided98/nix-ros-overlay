{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path
, colcon-test-result, cmake }:

buildPythonPackage rec {
  pname = "colcon-cmake";
  version = "0.2.29";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-8cChTiUw07c4+NBlnCfVnioKA9/vYB5hNpu1CD6/H2k=";
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
