
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, image-transport, multisensor-calibration-interface, pcl-conversions, pcl-ros, qt5, rclcpp, rclcpp-components, rviz-common, sensor-msgs, small-gicp-vendor, std-msgs, tf2, tf2-ros, tinyxml-2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-multisensor-calibration";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/kilted/multisensor_calibration/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "71b446b1d92f49d80d9cbc9fc57472631c3708c5283b6f388cd9c051d1047bf5";
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
