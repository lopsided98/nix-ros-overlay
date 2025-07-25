
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-realsense2-camera-msgs";
  version = "4.56.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/rolling/realsense2_camera_msgs/4.56.4-2.tar.gz";
    name = "4.56.4-2.tar.gz";
    sha256 = "37d04e13c8c93324ddc17861525b539aeb4244e0246b163b4ff8b8b2c0f028a2";
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
