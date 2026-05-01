
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ouster-sensor-msgs";
  version = "0.14.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/lyrical/ouster_sensor_msgs/0.14.2-3.tar.gz";
    name = "0.14.2-3.tar.gz";
    sha256 = "fd495e0b4f0951e29d29957dc0b34b4dc9d2eea6264db0d4e9c57ed96a0bba13";
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
