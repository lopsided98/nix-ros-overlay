
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-velodyne-msgs";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/lyrical/velodyne_msgs/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "347661b1f4a9f5a1ac343e1b07ea2a40bc915a2cbbc74bd582de49ff4da838bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS message definitions for Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
