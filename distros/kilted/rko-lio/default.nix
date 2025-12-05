
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, nav-msgs, nlohmann_json, onetbb, rclcpp, rclcpp-components, rosbag2-cpp, rosbag2-storage, sensor-msgs, sophus, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rko-lio";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rko_lio-release/archive/release/kilted/rko_lio/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0c995567f7de727ebc34fc7333235e218336c725dce420380a410f6b67e802b5";
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
