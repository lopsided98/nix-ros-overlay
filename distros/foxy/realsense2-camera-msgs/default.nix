
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense2-camera-msgs";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_camera_msgs/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "61e336e0799b56ff9422fbde6dac20d0432516befbbe54f2fbbd030b092d5087";
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
