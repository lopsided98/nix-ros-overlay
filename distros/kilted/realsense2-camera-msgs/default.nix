
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-realsense2-camera-msgs";
  version = "4.56.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/kilted/realsense2_camera_msgs/4.56.4-3.tar.gz";
    name = "4.56.4-3.tar.gz";
    sha256 = "948632aeb65844abeddab681ec088f689371bae3b615e8aac23f0ceb3fdd67c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RealSense camera_msgs package containing realsense camera messages definitions";
    license = with lib.licenses; [ asl20 ];
  };
}
