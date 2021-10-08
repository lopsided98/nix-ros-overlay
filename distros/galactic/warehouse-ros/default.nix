
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-warehouse-ros";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/warehouse_ros-release/archive/release/galactic/warehouse_ros/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "c559cc10d1bdb1fbce7222f80c65e042fdc094661fa9a876c2e0669fde8140b3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-lint-auto ];
  propagatedBuildInputs = [ boost geometry-msgs openssl pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
