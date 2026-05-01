
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-imu-transformer";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/lyrical/imu_transformer/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "3ce27f6d1bf2b5d7d457705f8ef115bf8ca2925a1e9c53cebec90bca5d7b0edf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest geometry-msgs tf2-geometry-msgs ];
  propagatedBuildInputs = [ message-filters rclcpp rclcpp-components sensor-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node/components to transform sensor_msgs::Imu data from one frame into another.";
    license = with lib.licenses; [ "GPL" ];
  };
}
