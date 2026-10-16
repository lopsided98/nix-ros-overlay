
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-real-common, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rqt-bridge";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rqt_bridge/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "2e0fb27d1462e0a0299cb3e566fda759792c1aaa16653b2b16eb0fcde8ee09b1";
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
