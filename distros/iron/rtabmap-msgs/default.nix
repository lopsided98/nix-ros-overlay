
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-rtabmap-msgs";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_msgs/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "44c2579cc0fca863b01aadc31b0a4e2e311610e4fdd0949de2b616ab442e2a00";
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
