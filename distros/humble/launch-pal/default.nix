
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "764916d7432a0d4755a2708874439c0ae5da95e2301dbb56d5334d32f31e56b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.pyyaml ];

  meta = {
    description = ''Utilities for launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
