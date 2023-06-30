
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-realsense2-camera-msgs";
  version = "4.54.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/iron/realsense2_camera_msgs/4.54.1-1.tar.gz";
    name = "4.54.1-1.tar.gz";
    sha256 = "9f3344779a624ebc086a63f25d11ed231bf7cb6373ebaf8ddc210b7e1b41cb9a";
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
