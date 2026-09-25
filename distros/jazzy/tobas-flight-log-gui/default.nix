
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libquazip1-qt5-dev, ament-cmake, tobas-debug-msgs, tobas-gui-common, tobas-kdl, tobas-msgs, tobas-property-client, tobas-qt-tools, tobas-qwt-wrapper, tobas-ros2-tools, tobas-rqt-bridge, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-flight-log-gui";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_flight_log_gui/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "95b097e13481a64066716460b0cbc3334813d98a668b2796805fef73b914cc88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_libquazip1-qt5-dev tobas-debug-msgs tobas-gui-common tobas-kdl tobas-msgs tobas-property-client tobas-qt-tools tobas-qwt-wrapper tobas-ros2-tools tobas-rqt-bridge tobas-string-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for recording, viewing, and plotting Tobas flight logs.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
