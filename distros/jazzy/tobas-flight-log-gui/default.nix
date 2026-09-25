
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libquazip1-qt5-dev, ament-cmake, tobas-debug-msgs, tobas-gui-common, tobas-kdl, tobas-msgs, tobas-property-client, tobas-qt-tools, tobas-qwt-wrapper, tobas-ros2-tools, tobas-rqt-bridge, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-flight-log-gui";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_flight_log_gui/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f91b17c673a7a9d7fe669723cd09ad2ed88954596b305aa5c4e23d1dfdae222e";
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
