
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, class-loader, cv-bridge, gst_all_1, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-gscam";
  version = "2.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gscam-release/archive/release/jazzy/gscam/2.0.2-5.tar.gz";
    name = "2.0.2-5.tar.gz";
    sha256 = "2ee2914dfa201cc23324ad70eaf3363da3ee9bb07f2e02fbc5afc0a7edbbeff3";
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
