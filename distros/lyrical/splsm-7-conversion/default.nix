
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, splsm-7 }:
buildRosPackage {
  pname = "ros-lyrical-splsm-7-conversion";
  version = "3.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/lyrical/splsm_7_conversion/3.0.1-5.tar.gz";
    name = "3.0.1-5.tar.gz";
    sha256 = "219c2f3e992285fbc7413d12236e96cd28d000957041ae919235b1a23b2c57a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
