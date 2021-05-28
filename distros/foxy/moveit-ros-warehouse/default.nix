
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-warehouse";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_warehouse/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "fd6e0967e5199b6179a37d4f9e9e8f83be059bd1c57480248874bf8d19c35c00";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning rclcpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
