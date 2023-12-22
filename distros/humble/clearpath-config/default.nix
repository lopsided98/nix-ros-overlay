
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "d57b8463f3c634796a9d99dae5fd101d34f454331a1a181feaf0f5f683a97f13";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = ''Clearpath Configuration YAML Parser and Writer'';
    license = with lib.licenses; [ bsd3 ];
  };
}
