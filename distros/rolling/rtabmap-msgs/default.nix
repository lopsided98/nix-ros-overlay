
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-msgs";
  version = "0.23.13-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap_ros-release/archive/release/rolling/rtabmap_msgs/0.23.13-2.tar.gz";
    name = "0.23.13-2.tar.gz";
    sha256 = "9ec3010fed78f08cfa0441fb6252da1eefdf5604d3e9b693c7b10743bfaebdc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RTAB-Map's msgs package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
