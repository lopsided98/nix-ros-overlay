
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, gst_all_1, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-gstreamer-ros-babel-fish";
  version = "1.26.40-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gstreamer_ros_babel_fish-release/archive/release/jazzy/gstreamer_ros_babel_fish/1.26.40-1.tar.gz";
    name = "1.26.40-1.tar.gz";
    sha256 = "5de07f0c5e9de089bc4324c9704baaf61a263c3f01e0d9ecadd883cdeabfe464";
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
