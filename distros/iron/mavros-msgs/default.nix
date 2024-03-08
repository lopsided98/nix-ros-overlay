
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geographic-msgs, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-mavros-msgs";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/iron/mavros_msgs/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "08ae469c791df46180c12292d36d8bbd4a89ded4709ed35dba38c8f299506317";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs rcl-interfaces rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
