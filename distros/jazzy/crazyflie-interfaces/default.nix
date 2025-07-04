
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie-interfaces";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie_interfaces/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "150f101633358f490c3cd63c43b8ce7dc47c4d69d59a3d6f6bcc5fde85fc02da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for Crazyswarm2 package.";
    license = with lib.licenses; [ mit ];
  };
}
