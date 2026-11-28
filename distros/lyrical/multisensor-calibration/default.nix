
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, image-transport, multisensor-calibration-interface, pcl-conversions, pcl-ros, qt5, rclcpp, rclcpp-components, rviz-common, sensor-msgs, small-gicp-vendor, std-msgs, tf2, tf2-ros, tinyxml-2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-multisensor-calibration";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/lyrical/multisensor_calibration/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7e8a1b788b4d5decd6aa09bda986e7b15ac7b906f99324b96c96236281dea6a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport multisensor-calibration-interface pcl-conversions pcl-ros qt5.qtbase rclcpp rclcpp-components rviz-common sensor-msgs small-gicp-vendor std-msgs tf2 tf2-ros tinyxml-2 urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collection of methods and applications to calibrate multi-sensor-systems, e.g.
    camera to LiDAR, LiDAR to LiDAR, and LiDAR to vehicle.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
