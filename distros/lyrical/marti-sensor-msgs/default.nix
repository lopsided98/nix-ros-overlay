
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-marti-sensor-msgs";
  version = "1.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_sensor_msgs/1.6.1-4.tar.gz";
    name = "1.6.1-4.tar.gz";
    sha256 = "65f5b6423e0a64c3fea90171d296831318cd802293007f311dccd62093c09ae1";
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
