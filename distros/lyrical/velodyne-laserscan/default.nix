
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-velodyne-laserscan";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/lyrical/velodyne_laserscan/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "fae9f5cca0d22df74e5da4ae6dc3c517820475e8d001a2b85c6d70b14bddf794";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
