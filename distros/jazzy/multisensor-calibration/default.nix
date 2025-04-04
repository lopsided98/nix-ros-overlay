
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, image-transport, multisensor-calibration-interface, pcl-conversions, pcl-ros, qt5, rclcpp, rclcpp-components, rviz-common, sensor-msgs, small-gicp-vendor, std-msgs, tf2, tf2-ros, tinyxml-2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-multisensor-calibration";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/multisensor_calibration/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "72858873ef94b30986df813692b999ccc8142b6ed1dd9e410168f6f3111d2c8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport multisensor-calibration-interface pcl-conversions pcl-ros qt5.qtbase rclcpp rclcpp-components rviz-common sensor-msgs small-gicp-vendor std-msgs tf2 tf2-ros tinyxml-2 urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collection of methods and applications to calibrate multi-sensor-systems, e.g.
    camera to LiDAR, LiDAR to LiDAR, and LiDAR to vehicle.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
