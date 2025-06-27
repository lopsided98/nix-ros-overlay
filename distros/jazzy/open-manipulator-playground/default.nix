
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-playground";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_playground/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "7e8f09ee0baba781003804597fbba0210265b11b42d940260bbcc88b392a5059";
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
