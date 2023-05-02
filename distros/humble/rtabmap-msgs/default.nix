
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-msgs";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_msgs/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "7de5b6ad29068f95cd5016a8560e0892e8dd7ba1af4a9a175cb5a7c856dcb9a2";
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
