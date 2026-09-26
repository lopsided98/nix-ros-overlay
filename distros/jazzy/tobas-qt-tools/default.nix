
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, eigen, qt5, tobas-math, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qt-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qt_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "005dd7246408a0a88952973930d16fd49c2b009121f7163026cc121035453166";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp eigen qt5.qtbase tobas-math tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reusable Qt widgets, models, dialogs, validators, and application utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
