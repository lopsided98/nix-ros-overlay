
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, magic-enum, qt5, tobas-constants, tobas-drone-core, tobas-geographic, tobas-gui-common, tobas-mission-msgs-adapter, tobas-msgs-adapter, tobas-path-tools, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-rqt-bridge, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-control-system";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_control_system/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "519b29b9b2c8564cf47f93aaf9333078145f14767054300908b7d239e241d4cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libsForQt5.qwt magic-enum qt5.qtdeclarative qt5.qtlocation qt5.qtpositioning tobas-constants tobas-drone-core tobas-geographic tobas-gui-common tobas-mission-msgs-adapter tobas-msgs-adapter tobas-path-tools tobas-property-client tobas-qt-tools tobas-ros2-tools tobas-rqt-bridge tobas-trajectory-generation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt control dashboard for monitoring vehicles and planning and executing missions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
