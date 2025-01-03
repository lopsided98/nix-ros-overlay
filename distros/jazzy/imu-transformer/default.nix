
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-imu-transformer";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/jazzy/imu_transformer/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "9c955be02f965f442ff7aafdd79662167aab24d0df1753e0a9cda553998cbb44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ geometry-msgs tf2-geometry-msgs ];
  propagatedBuildInputs = [ message-filters rclcpp rclcpp-components sensor-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node/components to transform sensor_msgs::Imu data from one frame into another.";
    license = with lib.licenses; [ "GPL" ];
  };
}
