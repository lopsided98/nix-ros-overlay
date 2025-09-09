
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-marti-sensor-msgs";
  version = "1.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/kilted/marti_sensor_msgs/1.6.1-2.tar.gz";
    name = "1.6.1-2.tar.gz";
    sha256 = "c31fb66ba2ad8ddf6dbc8bc66f2fd5946481b960cd9e5567178e16b49c565404";
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
