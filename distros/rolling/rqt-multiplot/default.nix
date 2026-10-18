
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-index-cpp, boost, builtin-interfaces, clang, diagnostic-msgs, fastcdr, geometry-msgs, pluginlib, qt-gui-cpp, qt6, rcl, rclcpp, rclpy, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-zenoh-cpp, ros-babel-fish, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, rosidl-buffer, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-cpp, rqt-gui, rqt-gui-cpp, sensor-msgs, std-msgs, test-msgs, type-description-interfaces }:
buildRosPackage {
  pname = "ros-rolling-rqt-multiplot";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_multiplot_plugin-release/archive/release/rolling/rqt_multiplot/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "854101d6002438c43f9e2629a170ee145885036423735c30d919064770be99fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest builtin-interfaces clang diagnostic-msgs geometry-msgs rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-zenoh-cpp rosbag2-storage-mcap sensor-msgs std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp boost diagnostic-msgs fastcdr geometry-msgs pluginlib qt-gui-cpp qt6.qtbase qt6.qtsvg rcl rclcpp rclpy ros-babel-fish rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-storage-mcap rosidl-buffer rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-cpp rqt-gui rqt-gui-cpp sensor-msgs std-msgs type-description-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_multiplot provides a GUI plugin for visualizing numeric values in multiple 2D plots using the Qwt plotting backend.";
    license = with lib.licenses; [ "GNU-Lesser-General-Public-License-v3.0-LGPL-3.0-" ];
  };
}
