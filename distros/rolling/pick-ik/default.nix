
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, git, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2, tf2-geometry-msgs, tf2-kdl, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-pick-ik";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/rolling/pick_ik/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "e267f6ee7c0d86c68950230f2a290d6ca9c2809ed821b7bdc5d56fe31c3c4260";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ git moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2 tf2-geometry-msgs tf2-kdl tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Inverse Kinematics solver for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
