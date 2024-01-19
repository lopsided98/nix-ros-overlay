
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-picknik-twist-controller";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/rolling/picknik_twist_controller/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "8d0fe22b7a7ecd9325f72eda1c94f2d0155d7544f968448b30416abbac772e1d";
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
