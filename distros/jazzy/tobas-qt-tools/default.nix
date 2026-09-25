
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, tobas-math, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qt-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qt_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "4e88836efa45012bbe93ed1f47839d44364cd87b6725e67355427bb6dc00d028";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp tobas-math tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reusable Qt widgets, models, dialogs, validators, and application utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
