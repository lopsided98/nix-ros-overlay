
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-8 }:
buildRosPackage {
  pname = "ros-iron-splsm-8-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/splsm_8_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "6eb854be997f15933b705ad2be42b137f093c62413c0a5880521e103848070ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-8 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V8 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
