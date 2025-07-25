
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-msgs";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_msgs/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "d9d680aafaac4ca394fa40249c122f4a8235cf74ea754fd8081f0db5c1811f48";
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
