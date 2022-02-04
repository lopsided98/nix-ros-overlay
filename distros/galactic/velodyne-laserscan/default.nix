
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-velodyne-laserscan";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/galactic/velodyne_laserscan/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "3515176c9763bd0abb07f81b59117dc95c0e5d8eec2c3d0f323176bebd6fde36";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
