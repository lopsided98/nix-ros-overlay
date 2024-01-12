
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "22cc5a6912600d9d0bd91780fd18c39b8899f832269c9abc5e91aabceeda14c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = ''Clearpath Configuration YAML Parser and Writer'';
    license = with lib.licenses; [ bsd3 ];
  };
}
