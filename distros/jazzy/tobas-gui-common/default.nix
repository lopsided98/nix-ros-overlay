
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-colcon-cpp, tobas-constants, tobas-linux, tobas-qt-tools, tobas-ssh-client, tobas-std-tools, tobas-version, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui-common";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui_common/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "398a66f1c0c76db2021b5f283c29f828472499af00a7c1ddf58a1c7289fd4652";
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
