
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-picknik-twist-controller";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/jazzy/picknik_twist_controller/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "844a14e3633b58b4b4132d649ad9977a41a71b8c5584384c97d6054555498545";
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
