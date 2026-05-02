
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-copyright, ament-cpplint, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, ament-xmllint, geometry-msgs, laser-geometry, message-filters, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dual-laser-merger";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dual_laser_merger-release/archive/release/rolling/dual_laser_merger/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "f2833f4d2b8865ac1f257b2a686b132d03c367b4d0d3b97e58a0957fc174c269";
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
