
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-copyright, ament-cpplint, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, ament-xmllint, geometry-msgs, laser-geometry, message-filters, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dual-laser-merger";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dual_laser_merger-release/archive/release/rolling/dual_laser_merger/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "9977ceea8935b25fec91715c2f4337b78ca6f212d8bfa44b275fcc2f722c9a86";
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
