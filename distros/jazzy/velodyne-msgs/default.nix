
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-msgs";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/jazzy/velodyne_msgs/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "633a3a0e5cc501092f993f23a1dcc1076d1faa93a48caa0cce5d02eb5743aced";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS message definitions for Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
