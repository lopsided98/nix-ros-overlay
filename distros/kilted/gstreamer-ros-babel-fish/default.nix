
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, gst_all_1, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-gstreamer-ros-babel-fish";
  version = "1.26.40-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gstreamer_ros_babel_fish-release/archive/release/kilted/gstreamer_ros_babel_fish/1.26.40-1.tar.gz";
    name = "1.26.40-1.tar.gz";
    sha256 = "ea570a3afc5b8d663cd66b34dee413d92e866cdd6877da9e374a069d26a8afd2";
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
