
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, hls-lfcd-lds-driver, joy-linux, nav2-map-server, opencv, raspimouse, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, rt-usb-9axisimu-driver, sensor-msgs, slam-toolbox, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-ros2-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_ros2_examples-release/archive/release/foxy/raspimouse_ros2_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a6279ae1b455a48c4b296ebca57c9c2381bd761925fdb0db03611b97742165de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs hls-lfcd-lds-driver joy-linux nav2-map-server opencv raspimouse raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle rt-usb-9axisimu-driver sensor-msgs slam-toolbox std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Raspberry Pi Mouse examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
