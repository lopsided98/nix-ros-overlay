
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-humble-picknik-twist-controller";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/humble/picknik_twist_controller/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "88fe65b60536cde66480fc75cd915ed3704803715e224aa951fd32425a4ecf91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Subscribes to twist msg and forwards to hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
