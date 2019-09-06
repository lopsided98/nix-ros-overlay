
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, camera-info-manager, image-transport, sensor-msgs, rclcpp, ament-cmake-ros, ament-lint-auto, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-dashing-v4l2-camera";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/boldhearts/releases/ros2_v4l2_camera-release/repository/archive.tar.gz?ref=release/dashing/v4l2_camera/0.1.1-1";
    name = "archive.tar.gz";
    sha256 = "9d95b9bc438b735c65dde0379ad8d61e260198172e11a7db969540cc18dc5592";
  };

  buildType = "ament_cmake";
  buildInputs = [ camera-info-manager image-transport sensor-msgs rclcpp rclcpp-components ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A ROS 2 camera driver using Video4Linux2'';
    license = with lib.licenses; [ asl20 ];
  };
}
