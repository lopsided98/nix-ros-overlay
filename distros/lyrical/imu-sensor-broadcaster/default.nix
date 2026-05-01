
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, eigen, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-imu-sensor-broadcaster";
  version = "6.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/imu_sensor_broadcaster/6.6.0-3.tar.gz";
    name = "6.6.0-3.tar.gz";
    sha256 = "cf02e13c4da403213931c0d85b0a7ec727fa6a82e14dc2088fc23851569f0efb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ backward-ros controller-interface eigen generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish readings of IMU sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
