
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-raspimouse";
  version = "1.1.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/humble/raspimouse/1.1.1-7.tar.gz";
    name = "1.1.1-7.tar.gz";
    sha256 = "0748abc5af4ccf3244d9868b444c654d0a9425c7022790f55d03f6983d7392ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RaspiMouse ROS 2 node'';
    license = with lib.licenses; [ asl20 ];
  };
}
