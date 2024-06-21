
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-camera-msgs";
  version = "4.55.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/jazzy/realsense2_camera_msgs/4.55.1-2.tar.gz";
    name = "4.55.1-2.tar.gz";
    sha256 = "d5a36006c70bd863fbee0a5af763d696b697fcd2d7e0d5b560400119cfc6ff5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RealSense camera_msgs package containing realsense camera messages definitions";
    license = with lib.licenses; [ asl20 ];
  };
}
