
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-marti-sensor-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/eloquent/marti_sensor_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "40755705f8f1f0ded4d5523dc15fb6ad7e224259861835ae9903a39f0654b233";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
