
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-camera-msgs";
  version = "4.58.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/jazzy/realsense2_camera_msgs/4.58.4-1.tar.gz";
    name = "4.58.4-1.tar.gz";
    sha256 = "48a02c3bd4f84fca8c3a48174ecad085707e79b55a654dd2f43e50ef675df997";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RealSense camera_msgs package containing realsense camera messages definitions";
    license = with lib.licenses; [ asl20 ];
  };
}
