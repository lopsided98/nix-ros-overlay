
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-realsense2-camera-msgs";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/realsense2_camera_msgs/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "1444eae3dbc9ba23a62666cfb7aa917afcb31ec00edd27f21e7b7355d0977a70";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing realsense camera messages definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
