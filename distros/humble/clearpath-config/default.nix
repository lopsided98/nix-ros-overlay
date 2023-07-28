
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "b7742e7b29a3e41b7c35718e8770fd213afef97b0a8cab87b06b1a1c5f7030a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = ''Clearpath Configuration YAML Parser and Writer'';
    license = with lib.licenses; [ bsd3 ];
  };
}
