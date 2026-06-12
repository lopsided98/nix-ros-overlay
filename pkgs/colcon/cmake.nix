{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, colcon-library-path
, colcon-test-result, cmake, setuptools }:

buildPythonPackage rec {
  pname = "colcon-cmake";
  version = "0.2.29";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-v91UREVifYnwbMcM819B5CsXl8FbAH61Ydzu0vXBPX8=";
  };

  pyproject = true;
  build-system = [ setuptools ];

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
    description = "Extension for colcon-core to support CMake projects";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
