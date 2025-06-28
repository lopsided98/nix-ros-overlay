
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-msgs";
  version = "0.22.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_msgs/0.22.0-2.tar.gz";
    name = "0.22.0-2.tar.gz";
    sha256 = "f96d06548e62418b3f4c50917a3b015e179dc8bb385a2a11f297c59f87c78189";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RTAB-Map's msgs package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
