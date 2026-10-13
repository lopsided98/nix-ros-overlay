
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-rqt-bridge }:
buildRosPackage {
  pname = "ros-jazzy-tobas-actuator-test";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_actuator_test/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "4b6eadae47e375eeabaa7354ca2091503e6e19b705c325fbc106de87c0e4a9e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libsForQt5.qwt tobas-dparam-client tobas-drone-core tobas-gui-common tobas-qt-tools tobas-rqt-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for testing actuators and visualizing actuator commands.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
