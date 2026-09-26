
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-rqt-bridge }:
buildRosPackage {
  pname = "ros-jazzy-tobas-actuator-test";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_actuator_test/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "cb406cdc29c53e52f2146deb3df32f3b903986fd9eeb4325f307388f8733ee08";
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
