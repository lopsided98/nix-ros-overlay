
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-picknik-twist-controller";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/rolling/picknik_twist_controller/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "1429ad50d5341cf861d962bc122327830ac57c637365b0989fabe21772ce38f5";
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
