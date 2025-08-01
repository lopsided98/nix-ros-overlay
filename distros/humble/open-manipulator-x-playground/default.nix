
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-playground";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_playground/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "8a877f05c6af2e8220eb8b662a0bece72a0438932d55521d73b297993f851259";
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
