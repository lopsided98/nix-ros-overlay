
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-realsense2-camera-msgs";
  version = "4.57.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/lyrical/realsense2_camera_msgs/4.57.7-3.tar.gz";
    name = "4.57.7-3.tar.gz";
    sha256 = "ef7444a4bb5e55da4b35fec3963acb41959843e364a3777dc978b4f8e2288733";
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
