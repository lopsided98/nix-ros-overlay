
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/jazzy/clearpath_config/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "66676635f03f1bc9808963f8e307cf8407377ff7ca12d0ea2e281e2678755b11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "Clearpath Configuration YAML Parser and Writer";
    license = with lib.licenses; [ bsd3 ];
  };
}
