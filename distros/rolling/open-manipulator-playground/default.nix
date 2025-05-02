
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-playground";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_playground/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "1c7ed94e2233bb115aaa7c0e64cce0720d2fb9fcd075f723f3783053cdf165ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-ros-planning-interface rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides an example for utilizing the MoveIt API with the OpenMANIPULATOR-X,
    allowing users to practice and experiment freely.";
    license = with lib.licenses; [ asl20 ];
  };
}
