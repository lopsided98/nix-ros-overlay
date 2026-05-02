
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ouster-sensor-msgs";
  version = "0.14.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/rolling/ouster_sensor_msgs/0.14.2-2.tar.gz";
    name = "0.14.2-2.tar.gz";
    sha256 = "330203a9e7c6604abe791476c8f9ce8ae4c5182fd2881ea936c05278f57c2619";
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
