
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-marti-sensor-msgs";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_sensor_msgs/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "847db3173aaf3eaaeb084f072dd539e2d23b0ce5c59c70a64d14803c57a01088";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_sensor_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
