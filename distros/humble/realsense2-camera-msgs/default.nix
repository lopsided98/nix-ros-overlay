
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-realsense2-camera-msgs";
  version = "4.56.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/humble/realsense2_camera_msgs/4.56.4-2.tar.gz";
    name = "4.56.4-2.tar.gz";
    sha256 = "c41211b7b6f2fe407aa9005597d1ca49d6339122d9b0a5ba223d66d4482ea0ee";
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
