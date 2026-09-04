
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, onetbb, rclcpp, rclcpp-components, rclpy, robin-map, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, sensor-msgs, sophus, spdlog, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-rko-lio";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/rolling/rko_lio/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a2635f03d02fa6f6aebfb4a2dd654a917028e0a23f50341dfab0a584d50b9cc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs onetbb rclcpp rclcpp-components rclpy robin-map rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py sensor-msgs sophus spdlog std-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Robust Approach for LiDAR-Inertial Odometry Without Sensor-Specific Modelling";
    license = with lib.licenses; [ mit ];
  };
}
