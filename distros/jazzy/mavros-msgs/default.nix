
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geographic-msgs, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mavros-msgs";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/jazzy/mavros_msgs/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "c5da55a5d0bcd3d8d4091337350b6a0139355e7be61109133ee3bad480824d91";
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
