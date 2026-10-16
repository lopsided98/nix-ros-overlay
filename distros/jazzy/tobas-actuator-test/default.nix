
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-rqt-bridge }:
buildRosPackage {
  pname = "ros-jazzy-tobas-actuator-test";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_actuator_test/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "a51f30350669c4b0b4db22918197ef1169b1db5793d802142a9b8d11787a4a57";
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
