
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, splsm-7 }:
buildRosPackage {
  pname = "ros-humble-splsm-7-conversion";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/splsm_7_conversion/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "54c80a1825c5d32abeb546ff0ec175aef76498175ae32a768e0df081f309570c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
