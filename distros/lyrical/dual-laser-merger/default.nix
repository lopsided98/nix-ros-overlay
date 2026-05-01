
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-copyright, ament-cpplint, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, ament-xmllint, geometry-msgs, laser-geometry, message-filters, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dual-laser-merger";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dual_laser_merger-release/archive/release/lyrical/dual_laser_merger/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "77707a1abe1139e9ea664ab9b15abfe0ad15e629433d9da3787b93c8cf8754ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-copyright ament-cpplint ament-flake8 ament-lint-auto ament-lint-common ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry message-filters pcl pcl-conversions pcl-ros rclcpp rclcpp-components tf2 tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "merge dual lidar's scans.";
    license = with lib.licenses; [ asl20 ];
  };
}
