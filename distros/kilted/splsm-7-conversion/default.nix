
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, splsm-7 }:
buildRosPackage {
  pname = "ros-kilted-splsm-7-conversion";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/kilted/splsm_7_conversion/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "41ca054cc3040caa324190b5db2ed213d24ba25c82191076ec9cf4b38d551a71";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
