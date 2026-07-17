
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, onetbb, rclcpp, rclcpp-components, robin-map, rosbag2-cpp, rosbag2-storage, sensor-msgs, sophus, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rko-lio";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/kilted/rko_lio/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "4a079ad14b45e042801c93652fbccc71f4e223e8885cb1e4b996596f7aac0e04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nlohmann_json onetbb rclcpp rclcpp-components robin-map rosbag2-cpp rosbag2-storage sensor-msgs sophus std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Robust Approach for LiDAR-Inertial Odometry Without Sensor-Specific Modelling";
    license = with lib.licenses; [ mit ];
  };
}
