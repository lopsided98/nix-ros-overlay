
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geographic-msgs, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-mavros-msgs";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/kilted/mavros_msgs/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "429318d225b9ee6a12b10335b6b7a2c6ae3619cff75622db869854c0b1c1c0b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs rcl-interfaces rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
