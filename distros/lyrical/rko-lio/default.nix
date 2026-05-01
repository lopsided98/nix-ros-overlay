
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, onetbb, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs, sophus, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rko-lio";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/lyrical/rko_lio/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "b1696d33bb52a77bd62cd0d797cd9e875da628b0600f841d4232b6ee6e948406";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nlohmann_json onetbb rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs sophus std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Robust Approach for LiDAR-Inertial Odometry Without Sensor-Specific Modelling";
    license = with lib.licenses; [ mit ];
  };
}
