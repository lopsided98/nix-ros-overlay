
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hls-lfcd-lds-driver, joy-linux, nav2-map-server, opencv, raspimouse, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, rt-usb-9axisimu-driver, sensor-msgs, slam-toolbox, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-humble-raspimouse-ros2-examples";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_ros2_examples-release/archive/release/humble/raspimouse_ros2_examples/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4567bff84be33ef7d59c41fb4945ba38adb19accd63aa094748f07cf385e20ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hls-lfcd-lds-driver joy-linux nav2-map-server opencv raspimouse raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle rt-usb-9axisimu-driver sensor-msgs slam-toolbox std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Raspberry Pi Mouse examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
