
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, sensor-msgs, tobas-drone-core, tobas-eigen-conversions, tobas-geographic, tobas-gui-common, tobas-kdl-conversions, tobas-property-tree, tobas-qt-tools, tobas-real-common, tobas-real-msgs, tobas-rqt-bridge, tobas-rviz-wrapper, tobas-time-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sensor-calibration";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sensor_calibration/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "c3a245841d6ddcb7fcc85577fdf54e5eff7a18cb0987c0291fd0d0ce5c8d8d4e";
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
