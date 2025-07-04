
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-humble-crazyflie-interfaces";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie_interfaces/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7300103026b775a5962babf85d047957177798fab7ca49e9fdf797369cc4233d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for Crazyswarm2 package.";
    license = with lib.licenses; [ mit ];
  };
}
