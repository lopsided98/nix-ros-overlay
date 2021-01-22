
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-warehouse";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_warehouse/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8acd49a110b3830a0a8687e85b502c813248e307a1542bf0ae119820a92ad5b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning rclcpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
