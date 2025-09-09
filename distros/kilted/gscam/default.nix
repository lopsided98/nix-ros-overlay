
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, class-loader, cv-bridge, gst_all_1, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-gscam";
  version = "2.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gscam-release/archive/release/kilted/gscam/2.0.2-5.tar.gz";
    name = "2.0.2-5.tar.gz";
    sha256 = "7d7d6b4cba34f0b8f2a1d785b3ebaf463937e3e1c4d956dfc3d8b3c4ab847c26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager class-loader cv-bridge gst_all_1.gst-plugins-base gst_all_1.gstreamer image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
