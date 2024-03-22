
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hls-lfcd-lds-driver, joy-linux, nav2-map-server, opencv, raspimouse, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, rt-usb-9axisimu-driver, sensor-msgs, slam-toolbox, std-msgs, std-srvs, usb-cam, v4l-utils }:
buildRosPackage {
  pname = "ros-humble-raspimouse-ros2-examples";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_ros2_examples-release/archive/release/humble/raspimouse_ros2_examples/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "0554257dd89a8ab704a2ee597cd9ee16a38d404e3735085eb7c5fb15fae0ff30";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hls-lfcd-lds-driver joy-linux nav2-map-server opencv opencv.cxxdev raspimouse raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle rt-usb-9axisimu-driver sensor-msgs slam-toolbox std-msgs std-srvs usb-cam v4l-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Raspberry Pi Mouse examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
