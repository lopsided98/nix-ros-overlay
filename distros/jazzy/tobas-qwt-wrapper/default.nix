
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-qwt-wrapper";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_qwt_wrapper/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "36e0aec016cc9c9f1c54faa20ebbcee1ff28e197f429430a02990e1e2499c322";
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
