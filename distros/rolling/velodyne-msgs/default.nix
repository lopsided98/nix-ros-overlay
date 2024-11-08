
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-velodyne-msgs";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne_msgs/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "f9f2b57c0485144147723d65defe1ec202832bb666c1b690e8726def8a42f840";
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
