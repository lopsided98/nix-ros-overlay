
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hls-lfcd-lds-driver, joy-linux, nav2-map-server, opencv, raspimouse, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, rt-usb-9axisimu-driver, sensor-msgs, slam-toolbox, std-msgs, std-srvs, usb-cam, v4l-utils }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-ros2-examples";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_ros2_examples-release/archive/release/jazzy/raspimouse_ros2_examples/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "482d0b1bf61cbd3323711f3dd91952945279cc3e93a139b3300cb40f6336fff7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hls-lfcd-lds-driver joy-linux nav2-map-server opencv opencv.cxxdev raspimouse raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle rt-usb-9axisimu-driver sensor-msgs slam-toolbox std-msgs std-srvs usb-cam v4l-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Raspberry Pi Mouse examples";
    license = with lib.licenses; [ asl20 ];
  };
}
