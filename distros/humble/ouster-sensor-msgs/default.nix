
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ouster-sensor-msgs";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/humble/ouster_sensor_msgs/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "91d8cb4ee4930cbdf67685669653c592dee1057345dfad12d4be8177658f185e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ouster_ros message and service definitions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
