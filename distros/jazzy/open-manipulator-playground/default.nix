
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, moveit-ros-planning-interface, rclcpp, rclpy, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-playground";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_playground/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "45e2f9ffb758ead43e18fe99bba759629fabfb09e331599859b5f1c17ce2409e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ control-msgs moveit-ros-planning-interface rclcpp rclpy sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides an example for utilizing the MoveIt API with the OpenMANIPULATOR-X,
    allowing users to practice and experiment freely.";
    license = with lib.licenses; [ asl20 ];
  };
}
