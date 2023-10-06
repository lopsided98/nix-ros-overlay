
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "635ba85c7a2bee51e545a262b3088cb97d99c4c87a09b1cc5b7f978440519710";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = ''Clearpath Configuration YAML Parser and Writer'';
    license = with lib.licenses; [ bsd3 ];
  };
}
