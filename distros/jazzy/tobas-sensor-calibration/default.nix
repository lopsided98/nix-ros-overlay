
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, sensor-msgs, tobas-drone-core, tobas-eigen-conversions, tobas-geographic, tobas-gui-common, tobas-kdl-conversions, tobas-property-tree, tobas-qt-tools, tobas-real-common, tobas-real-msgs, tobas-rqt-bridge, tobas-rviz-wrapper, tobas-time-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sensor-calibration";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sensor_calibration/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "389b5ee5692ea602b0a32d613b9b184684cf88876c288a8b44c4a9fea5f8dc06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs sensor-msgs tobas-drone-core tobas-eigen-conversions tobas-geographic tobas-gui-common tobas-kdl-conversions tobas-property-tree tobas-qt-tools tobas-real-common tobas-real-msgs tobas-rqt-bridge tobas-rviz-wrapper tobas-time-tools visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for calibrating Tobas accelerometers, magnetometers, and RC input.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
