
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-pcl-ros";
  version = "2.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/jazzy/pcl_ros/2.6.1-4.tar.gz";
    name = "2.6.1-4.tar.gz";
    sha256 = "f2bd9c8a9eaa4e2545321e8b2e9483d3bebac0e016ea4602a7a5e45a69c4f4b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ros sensor-msgs ];
  propagatedBuildInputs = [ eigen geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
