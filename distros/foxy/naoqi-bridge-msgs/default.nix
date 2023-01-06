
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-naoqi-bridge-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge_msgs2-release/archive/release/foxy/naoqi_bridge_msgs/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "3c366aa6eeb8325c54fdb7136fb60fbba252c995207786fb57d101f1f079711e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs nav-msgs rosidl-default-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The naoqi_bridge_msgs package provides custom messages for running Aldebaran's robots in ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
