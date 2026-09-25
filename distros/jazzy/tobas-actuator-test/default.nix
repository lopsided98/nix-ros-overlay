
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-rqt-bridge }:
buildRosPackage {
  pname = "ros-jazzy-tobas-actuator-test";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_actuator_test/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "af35dfad0b94cdd6e5a41a7828f906ad4ab97c9bb97060fb74bc129ffd81aa1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-client tobas-drone-core tobas-gui-common tobas-qt-tools tobas-rqt-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for testing actuators and visualizing actuator commands.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
