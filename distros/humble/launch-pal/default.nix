
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "990c236839599a0b4f22661829c408b09f76c6ad0b2a78ba535b72a0a16d0150";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
