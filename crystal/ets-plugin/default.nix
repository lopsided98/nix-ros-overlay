
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-implementation-cmake, std-msgs, rosidl-default-runtime, launch-ros, ament-cmake, ets-msgs, rmw, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-ets-plugin";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/ets_plugin/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "8287ec4889915a5aa9a8e1db5b55c6b95fefba310f11f31f594ad9e132f0391d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake std-msgs ets-msgs rmw rclcpp ];
  propagatedBuildInputs = [ rcutils rosidl-default-runtime std-msgs launch-ros ets-msgs rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ETS2/ATS plugin to publish telemetry information using ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
