{ lib, buildPythonPackage, fetchFromGitHub, catkin-pkg, colcon-cmake
, colcon-core, colcon-pkg-config, colcon-python-setup-py, colcon-recursive-crawl
, colcon-library-path, toml }:

buildPythonPackage rec {
  pname = "colcon-cargo";
  version = "unstable-2022-04-29";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    rev = "0e64a99501d8ce588b0bfc389d08ccd331c18a3b";
    hash = "sha256-o3UDKZVXrHHK7iMVZNt4iOjGOJR3Gjj34gdhu/x3RGM=";
  };

  propagatedBuildInputs = [
    catkin-pkg
    colcon-cmake
    colcon-core
    colcon-pkg-config
    colcon-python-setup-py
    colcon-recursive-crawl
    colcon-library-path
    toml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to support Rust projects built with Cargo.";
    homepage = "https://github.com/colcon/colcon-cargo";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
