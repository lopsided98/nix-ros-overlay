
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-v4l2-camera";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/jazzy/v4l2_camera/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7c946521ab7370e515de5940c1732927a7c7524745e9d72c33f1161dbdbec228";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 camera driver using Video4Linux2";
    license = with lib.licenses; [ asl20 ];
  };
}
