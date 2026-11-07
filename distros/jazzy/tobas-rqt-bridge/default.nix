
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-real-common, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rqt-bridge";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rqt_bridge/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "bfc6a2a007ccb8c92893bc11f30395434b19c2bca4ff99ffd7286e05da7d939d";
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
