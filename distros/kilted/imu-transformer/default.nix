
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-imu-transformer";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/kilted/imu_transformer/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "57fada7cdba7254447606d78c7a38194f1da967ece7341c92b04314f053047e5";
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
