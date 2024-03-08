
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-pick-ik";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/rolling/pick_ik/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "d0942041e0d12be2089f0b1eec42c1a521514fe3413abe82b991774c4423009d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2-geometry-msgs tf2-kdl tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Inverse Kinematics solver for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
