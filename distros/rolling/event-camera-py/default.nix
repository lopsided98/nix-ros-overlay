
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, pybind11-vendor, python-cmake-module, python3Packages, rclpy, ros-environment, rosbag2-py, rosbag2-storage-default-plugins, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-event-camera-py";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_py-release/archive/release/rolling/event_camera_py/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "d3a23f1adcec31830ce9162c94a717c88465d3ebeaf90ead839f708e2545d151";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.numpy rclpy rosbag2-py rosbag2-storage-default-plugins rosidl-runtime-py ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs pybind11-vendor ros-environment ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "Python access for event_camera_msgs.";
    license = with lib.licenses; [ asl20 ];
  };
}
