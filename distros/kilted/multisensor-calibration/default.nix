
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, image-transport, multisensor-calibration-interface, pcl-conversions, pcl-ros, qt5, rclcpp, rclcpp-components, rviz-common, sensor-msgs, small-gicp-vendor, std-msgs, tf2, tf2-ros, tinyxml-2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-multisensor-calibration";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/kilted/multisensor_calibration/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "9a8ef5c591a7e40aa8dbba66933559c2e60618546e3a288db4130eac92c3307e";
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
