
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.0.14-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.0.14-1.tar.gz";
    name = "0.0.14-1.tar.gz";
    sha256 = "90ac58858ff30c99475e37d47d7387dd5d7ddd18842848eb4be5dde5c2d2584c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.pyyaml ];

  meta = {
    description = ''Utilities for launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
