
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, sensor-msgs, tobas-drone-core, tobas-eigen-conversions, tobas-geographic, tobas-gui-common, tobas-kdl-conversions, tobas-property-tree, tobas-qt-tools, tobas-real-common, tobas-real-msgs, tobas-rqt-bridge, tobas-rviz-wrapper, tobas-time-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sensor-calibration";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sensor_calibration/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "0c375fffc64714b5f6d77de195aeada1bfdaefdbdfd0d1c3783191a779894d22";
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
