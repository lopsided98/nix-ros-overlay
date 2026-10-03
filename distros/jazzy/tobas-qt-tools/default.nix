
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, eigen, qt5, tobas-math, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qt-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qt_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "2d6c08c79c240c694bccbc8f0677512b8f0760c2adfb448131fb9d0361502cbd";
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
