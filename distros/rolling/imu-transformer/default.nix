
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-imu-transformer";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_transformer/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "b21f8cb0da768dfa6ded85259f543a3db738171b8ee78755021e0f9e2c1669a2";
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
