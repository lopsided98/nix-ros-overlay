
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-naoqi-bridge-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge_msgs2-release/archive/release/kilted/naoqi_bridge_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "049ca1b958c9da29057b19c553e93b9c604549f432360802deb8b68b5d5582f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs nav-msgs rosidl-default-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The naoqi_bridge_msgs package provides custom messages for running Aldebaran's robots in ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
