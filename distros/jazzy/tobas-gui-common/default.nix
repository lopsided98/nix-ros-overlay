
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-colcon-cpp, tobas-constants, tobas-linux, tobas-qt-tools, tobas-ssh-client, tobas-std-tools, tobas-version, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui-common";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui_common/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "5d499339e99732d2b80633494d2e5ae04b051ba5fd727458ee2e90a3489b2993";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt5.qtbase tobas-colcon-cpp tobas-constants tobas-linux tobas-qt-tools tobas-ssh-client tobas-std-tools tobas-version tobas-yaml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared project, networking, SSH, build, and user-interface utilities for Tobas GUI applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
