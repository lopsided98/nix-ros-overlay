
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense2-camera-msgs";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_camera_msgs/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "326781ffcc20e422261bc3d8021a8d934ae5bdeccb5c73e62e9508e781d87988";
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
