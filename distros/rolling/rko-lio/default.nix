
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs, sophus, std-msgs, tbb_2021_11, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rko-lio";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/rolling/rko_lio/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "f2ad2d380a26c3079ad663ee7cc1262f74c58560aaa868e9cd565dd2b35dc061";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nlohmann_json rclcpp rclcpp-components rosbag2-cpp rosbag2-storage sensor-msgs sophus std-msgs tbb_2021_11 tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Robust Approach for LiDAR-Inertial Odometry Without Sensor-Specific Modelling";
    license = with lib.licenses; [ mit ];
  };
}
