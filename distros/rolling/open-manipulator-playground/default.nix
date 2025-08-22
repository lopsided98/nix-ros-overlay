
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-playground";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_playground/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "222d6933cd3a6e150269da161094a089752cc77f4db0f93b919dc8270fc8083b";
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
