
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-v4l2-camera";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/lyrical/v4l2_camera/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "63309bc2d52681d735cf38775e029ed40a38a2604b36619712df062e98af70e2";
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
