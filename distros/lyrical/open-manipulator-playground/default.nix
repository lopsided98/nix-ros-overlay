
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-open-manipulator-playground";
  version = "4.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/lyrical/open_manipulator_playground/4.1.2-3.tar.gz";
    name = "4.1.2-3.tar.gz";
    sha256 = "7d2e3880c08be8c271f1f6addc84da0f4aa506d8e49a46e1b460613b5d1900d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-ros-planning-interface rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides an example for utilizing the MoveIt API with the OpenMANIPULATOR,
    allowing users to practice and experiment freely.";
    license = with lib.licenses; [ asl20 ];
  };
}
