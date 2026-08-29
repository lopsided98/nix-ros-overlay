
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-lgdx-rplidar-c1";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgdxrobot2_rplidar_c1-release/archive/release/lyrical/lgdx_rplidar_c1/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e7df99cd2598caa77feb7d1e33fd9adb48d46a8166183184198cb10ffc3b595c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake boost rclcpp rclcpp-components sensor-msgs ];

  meta = {
    description = "Lyrical RPLIDAR C1 ROS 2 wrapper for LGDXRobot2";
    license = with lib.licenses; [ mit ];
  };
}
