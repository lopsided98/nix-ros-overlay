
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-colcon-cpp, tobas-constants, tobas-linux, tobas-qt-tools, tobas-ssh-client, tobas-std-tools, tobas-version, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui-common";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui_common/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "13cdc21f1c7e44498bf065a6c6b279d0218dea3a5d50412fc1832f4805296e51";
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
