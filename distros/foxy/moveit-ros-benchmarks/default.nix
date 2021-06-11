
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, moveit-common, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-benchmarks";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_benchmarks/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "186724ff600ec93175f45c07e47cdac6562f91be795800f9d7f0e02b80210e57";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost moveit-ros-planning moveit-ros-warehouse pluginlib rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
