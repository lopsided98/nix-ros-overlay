
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-playground";
  version = "4.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_playground/4.0.8-1.tar.gz";
    name = "4.0.8-1.tar.gz";
    sha256 = "c73f95dee536c8dbe003726f2ca29dee744ba0d910c00b4580caa7d8a8206f13";
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
