
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, tobas-debug-msgs, tobas-gui-common, tobas-kdl, tobas-msgs, tobas-property-client, tobas-qt-tools, tobas-qwt-wrapper, tobas-ros2-tools, tobas-rqt-bridge, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-flight-log-gui";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_flight_log_gui/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "b6dcf9243b6f7b277b9dff37330860f14b4c2b0d168ccd87c215db4284097463";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libsForQt5.quazip tobas-debug-msgs tobas-gui-common tobas-kdl tobas-msgs tobas-property-client tobas-qt-tools tobas-qwt-wrapper tobas-ros2-tools tobas-rqt-bridge tobas-string-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for recording, viewing, and plotting Tobas flight logs.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
