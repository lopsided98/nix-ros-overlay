
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-pcl-ros";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/rolling/pcl_ros/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "416282dd02cd549c186af779644be16f23a60cb1bccf6016acb83537e4ab3cdd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ros sensor-msgs ];
  propagatedBuildInputs = [ eigen geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
