
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-msgs";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_msgs/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "f42a5d27f6678d484593f3fb0a333b0fb075149e567abf4544d87cc445c6d396";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's msgs package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
