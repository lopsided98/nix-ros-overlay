
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-marti-sensor-msgs";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/galactic/marti_sensor_msgs/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "5456fb1c174cd01b01472df6b5c44068d7b1e0e06da84da0dda7ac59779f9bb6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
