
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, hardware-interface, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-lyrical-picknik-twist-controller";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/lyrical/picknik_twist_controller/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "cd090ae5631cdfa35dd9aa754d2733da499511aa6b88e37dde0999a3afcf690f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs hardware-interface rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Subscribes to twist msg and forwards to hardware";
    license = with lib.licenses; [ asl20 ];
  };
}
