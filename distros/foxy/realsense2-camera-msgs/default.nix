
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense2-camera-msgs";
  version = "4.51.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_camera_msgs/4.51.1-1.tar.gz";
    name = "4.51.1-1.tar.gz";
    sha256 = "de810e982b2c49cd696b97da298451f309c6e2213a6ce3fded06a05e6c672df0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''RealSense camera_msgs package containing realsense camera messages definitions'';
    license = with lib.licenses; [ asl20 ];
  };
}
