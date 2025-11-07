
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/jazzy/clearpath_config/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "574e7297da42862a24d537308e3fc32069953a53ef801d543532c6e4fdc5e4bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "Clearpath Configuration YAML Parser and Writer";
    license = with lib.licenses; [ bsd3 ];
  };
}
