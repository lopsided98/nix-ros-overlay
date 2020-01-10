
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ets-msgs, launch-ros, rclcpp, rcutils, rmw, rmw-implementation-cmake, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-ets-plugin";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/ets_plugin/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "8287ec4889915a5aa9a8e1db5b55c6b95fefba310f11f31f594ad9e132f0391d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake ];
  propagatedBuildInputs = [ ets-msgs launch-ros rclcpp rcutils rmw rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ETS2/ATS plugin to publish telemetry information using ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
