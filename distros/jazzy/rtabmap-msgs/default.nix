
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-msgs";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_msgs/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "edfda2aa758cd6e6e01371d18467e293dca4551e22e71bd96faeb8a6159ea3f6";
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
