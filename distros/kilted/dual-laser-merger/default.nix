
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-copyright, ament-cpplint, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, ament-xmllint, geometry-msgs, laser-geometry, message-filters, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-dual-laser-merger";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dual_laser_merger-release/archive/release/kilted/dual_laser_merger/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "d9ef28159cf3850bbc0c608a73c406a472251fecdcfbef99a78e81726ced132c";
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
