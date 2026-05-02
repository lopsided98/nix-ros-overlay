
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-realsense2-camera-msgs";
  version = "4.57.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/rolling/realsense2_camera_msgs/4.57.7-2.tar.gz";
    name = "4.57.7-2.tar.gz";
    sha256 = "fdcf4f8eb1cb842e081f9b01e51fc976e5f394a4d88e633f227a2ee51d35367d";
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
