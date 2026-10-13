
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, eigen, qt5, tobas-math, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qt-tools";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qt_tools/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "bb6c606907aed5edb5006b4e959878b5d91b87a9dca9638a2a96a6b532032609";
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
