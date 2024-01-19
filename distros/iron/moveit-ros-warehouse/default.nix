
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-iron-moveit-ros-warehouse";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_ros_warehouse/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "80f09ad84822f7595f8c1f7a952db3ea5c261a064d8c1aec66b437cbd64ad906";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt moveit-common moveit-core moveit-ros-planning rclcpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsd3 ];
  };
}
