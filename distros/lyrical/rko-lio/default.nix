
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, onetbb, rclcpp, rclcpp-components, rclpy, robin-map, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, sensor-msgs, sophus, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-rko-lio";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/lyrical/rko_lio/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "0452fdc38e7c482e08e376ce15fecdc50d9b91887a068d3b0ef45ad5fe6dbd39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nlohmann_json onetbb rclcpp rclcpp-components rclpy robin-map rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py sensor-msgs sophus std-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Robust Approach for LiDAR-Inertial Odometry Without Sensor-Specific Modelling";
    license = with lib.licenses; [ mit ];
  };
}
