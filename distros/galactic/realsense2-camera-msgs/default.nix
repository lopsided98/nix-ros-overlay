
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-realsense2-camera-msgs";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/realsense2_camera_msgs/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "810d61b3c9b681315aa1ee879e98068cfd26c055c9553dba64c8d0ac37e7da95";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''RealSense camera_msgs package containing realsense camera messages definitions'';
    license = with lib.licenses; [ asl20 ];
  };
}
