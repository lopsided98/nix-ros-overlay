
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, onetbb, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs, sophus, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rko-lio";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/rolling/rko_lio/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "b9dffbeb1f91af3c3a89031cb81a65b7a60192c0ef50859010b1fcf2bf89771f";
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
