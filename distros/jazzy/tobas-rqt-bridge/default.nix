
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-real-common, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rqt-bridge";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rqt_bridge/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "ea8897331c97052c611deb28f09d09cf3b34eae5097273d203608feb11e05b06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt5.qtbase tobas-constants tobas-msgs-adapter tobas-path-tools tobas-real-common tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt signal bridge for delivering Tobas ROS 2 messages to GUI applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
