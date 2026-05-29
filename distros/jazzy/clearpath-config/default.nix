
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/jazzy/clearpath_config/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "29062138d46850bed8bb6ec62e72c0ada079d14590f2bb7a61c0e91dc2642823";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "Clearpath Configuration YAML Parser and Writer";
    license = with lib.licenses; [ bsd3 ];
  };
}
