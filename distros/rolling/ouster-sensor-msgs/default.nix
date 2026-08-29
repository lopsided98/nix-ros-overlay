
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ouster-sensor-msgs";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/rolling/ouster_sensor_msgs/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "4e8c7c3532ec20b9299735fbc6067100ba140955d5ede78fc09b332bf6d3e26c";
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
