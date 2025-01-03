
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-laserscan";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/jazzy/velodyne_laserscan/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "b9b155fa669b8f69bcc1eaecfe124e80bf172ad2e584f5cf7debe023bc3a4298";
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
