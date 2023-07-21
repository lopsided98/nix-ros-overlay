
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, example-interfaces, geometry-msgs, rclcpp, realtime-tools }:
buildRosPackage {
  pname = "ros-iron-picknik-twist-controller";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_controllers-release/archive/release/iron/picknik_twist_controller/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "db098cc4b15cba1c7ac69acaeb1a3466e7eb25342c83d7dbb51871f6c7b1ab29";
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
