
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-colcon-cpp, tobas-constants, tobas-linux, tobas-qt-tools, tobas-ssh-client, tobas-std-tools, tobas-version, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "3ab5d05f3f4b6b0c5697c423f2eee21a26549221528f408c4aab98754fb319cc";
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
