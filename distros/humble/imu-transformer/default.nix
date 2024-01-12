
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-imu-transformer";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/humble/imu_transformer/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "3de1a19447d04dbb04e098819bbaedb5b349b14bcb5d3f4f5cf51ea423ad138f";
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
