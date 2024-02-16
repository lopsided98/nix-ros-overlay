
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-imu-transformer";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_transformer/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "571bf04cc2221074d4c0b34dc7d3f9520b1be55451b12ca3df1fce49f67c2059";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ geometry-msgs tf2-geometry-msgs ];
  propagatedBuildInputs = [ message-filters rclcpp rclcpp-components sensor-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node/components to transform sensor_msgs::Imu data from one frame into another.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
