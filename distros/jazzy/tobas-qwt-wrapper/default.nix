
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qwt-wrapper";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qwt_wrapper/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "b7b35c66a7ef4d6d31a4a4eb24395de76634dd7c8604abe88c2b760694edd027";
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
