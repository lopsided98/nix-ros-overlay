
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, sensor-msgs, tobas-drone-core, tobas-eigen-conversions, tobas-geographic, tobas-gui-common, tobas-kdl-conversions, tobas-property-tree, tobas-qt-tools, tobas-real-common, tobas-real-msgs, tobas-rqt-bridge, tobas-rviz-wrapper, tobas-time-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sensor-calibration";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sensor_calibration/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "7310a8d8ba0854beab3744c553f6f68bee380afeb6fc8074630a0b9a0787eca6";
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
