
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, python3, rclcpp, rclcpp-action, rclpy, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-planning-interface";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_planning_interface/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "1c98afb1ecdfe3041b42cfd2a92e09367a05d58b02b0cece5dc1e91e60f5abf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ geometry-msgs moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
