
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, tobas-debug-msgs, tobas-gui-common, tobas-kdl, tobas-msgs, tobas-property-client, tobas-qt-tools, tobas-qwt-wrapper, tobas-ros2-tools, tobas-rqt-bridge, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-flight-log-gui";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_flight_log_gui/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "b7dd7e92cab040072eba817a0df7c8cb59bb4c01ab3bd64f8e5170f8bcee5637";
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
