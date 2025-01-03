
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-humble-pick-ik";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/humble/pick_ik/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "0f5ea00900ff101b170b97be3b8c93b0f16def7bf30613d2677a3a75adf4c3b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2-geometry-msgs tf2-kdl tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Inverse Kinematics solver for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
