
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-picknik-twist-controller";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/rolling/picknik_twist_controller/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "31ca8f1f7eeaaec7cc2fc45159125a9b72723a4814131ccf8d0d38c9ec85b219";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ controller-interface example-interfaces geometry-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Subscribes to twist msg and forwards to hardware";
    license = with lib.licenses; [ asl20 ];
  };
}
