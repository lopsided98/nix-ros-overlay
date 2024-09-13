
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-marti-sensor-msgs";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_sensor_msgs/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "f8c9d42b04843c869788cb60e120b7d9d1908c24e484b25cff496ff9b767befd";
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
