
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-colcon-cpp, tobas-constants, tobas-linux, tobas-qt-tools, tobas-ssh-client, tobas-std-tools, tobas-version, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui-common";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui_common/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5aa7a17226a6077e6fced60e4edbce06ebaa5dafedc0ebbb2f76ab7bb7893dbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-colcon-cpp tobas-constants tobas-linux tobas-qt-tools tobas-ssh-client tobas-std-tools tobas-version tobas-yaml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared project, networking, SSH, build, and user-interface utilities for Tobas GUI applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
