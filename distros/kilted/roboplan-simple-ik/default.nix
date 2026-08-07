
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages, roboplan }:
buildRosPackage {
  pname = "ros-kilted-roboplan-simple-ik";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_simple_ik/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "db6c9f067ef1a694c85f127fc26adbd4df54d0b00d1f777ecec59df2dad13949";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  propagatedBuildInputs = [ roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple inverse kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
