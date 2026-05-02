
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, gst_all_1, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-gstreamer-ros-babel-fish";
  version = "1.26.40-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gstreamer_ros_babel_fish-release/archive/release/rolling/gstreamer_ros_babel_fish/1.26.40-2.tar.gz";
    name = "1.26.40-2.tar.gz";
    sha256 = "378f1f62fafd09b923cbfe0caba9175095a7da518bae143b182171132077d32b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gstreamer rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GStreamer elements for bidirectional ROS 2 image streaming";
    license = with lib.licenses; [ "AGPL-3.0-only" ];
  };
}
