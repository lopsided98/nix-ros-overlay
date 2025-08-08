
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-playground";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_playground/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "00963413659e2a689e801384e376ef73d0c16d34323edb98e55cf03597273fc3";
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
