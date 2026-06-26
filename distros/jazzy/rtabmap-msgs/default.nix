
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-msgs";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_msgs/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "34d3eb024c683324877f373f8e737c2e0ebc7fed61b8b95fb6c94d9d11ad1466";
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
