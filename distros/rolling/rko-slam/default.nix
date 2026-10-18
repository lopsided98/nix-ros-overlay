
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, catch2, eigen, geometry-msgs, nanoflann, opencv, rclcpp, rclcpp-components, rko-lio, robin-map, rosbag2-storage, sensor-msgs, sophus, spdlog, std-msgs, tf2, tf2-ros, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-rko-slam";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_slam-release/archive/release/rolling/rko_slam/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "1a35f4cfa485fee31106af65587b1d2a0dd5c361c83dda79c109eec8cbd1b2c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ catch2 ];
  propagatedBuildInputs = [ builtin-interfaces eigen geometry-msgs nanoflann opencv opencv.cxxdev rclcpp rclcpp-components rko-lio robin-map rosbag2-storage sensor-msgs sophus spdlog std-msgs tf2 tf2-ros visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 LiDAR-inertial SLAM and multi-session alignment";
    license = with lib.licenses; [ mit ];
  };
}
