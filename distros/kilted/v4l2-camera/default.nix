
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-v4l2-camera";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/kilted/v4l2_camera/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "11145e41731b7558b5fccf3a1ac64197cc37e9e1e638f444f273cf78350ef49d";
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
