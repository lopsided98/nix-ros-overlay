
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, class-loader, gst_all_1, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-gscam";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gscam-release/archive/release/rolling/gscam/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "524346b751d682b2c9965bc5b36e20a3063d4825eb5553ad15a07625b31ca1c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager class-loader gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gstreamer image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
