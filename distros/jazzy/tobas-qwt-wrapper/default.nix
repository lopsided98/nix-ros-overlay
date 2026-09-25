
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qwt-wrapper";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qwt_wrapper/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "6231854d879b3fbb40c540d5f1ab4930a6d5ede9e1cd2ff540f65a5a16c997c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libsForQt5.qwt qt5.qtbase ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt-friendly wrapper and helper library for Qwt plotting components.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
