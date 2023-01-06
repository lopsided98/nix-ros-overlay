
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-v4l2-camera";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_v4l2_camera-release/archive/release/rolling/v4l2_camera/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "f5779d7281836abaabbd40b779be732b4d38b273c50c778d0165c7487886746d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A ROS 2 camera driver using Video4Linux2'';
    license = with lib.licenses; [ asl20 ];
  };
}
