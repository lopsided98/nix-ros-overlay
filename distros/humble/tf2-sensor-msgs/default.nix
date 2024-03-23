
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, rclcpp, sensor-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-sensor-msgs";
  version = "0.25.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_sensor_msgs/0.25.6-1.tar.gz";
    name = "0.25.6-1.tar.gz";
    sha256 = "eb9d35da2862611ce27c5e3a578089b387fd7a5a17e711b37a79b78f91cb287c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module sensor-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake-auto eigen3-cmake-module ];

  meta = {
    description = "Small lib to transform sensor_msgs with tf. Most notably, PointCloud2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
