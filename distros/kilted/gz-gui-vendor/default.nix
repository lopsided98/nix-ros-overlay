
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, protobuf, qt5, tinyxml-2, xorg }:
buildRosPackage {
  pname = "ros-kilted-gz-gui-vendor";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_gui_vendor-release/archive/release/kilted/gz_gui_vendor/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "ba6746edf7798cff1c7925013c08ad23517cd093d4320eb5d14362a12a0e25fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor protobuf qt5.qtbase qt5.qtcharts qt5.qtdeclarative qt5.qtgraphicaleffects qt5.qtlocation qt5.qtpositioning qt5.qtquickcontrols qt5.qtquickcontrols2 tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-gui9 9.0.2

    Gazebo GUI : Graphical interfaces for robotics applications";
    license = with lib.licenses; [ asl20 ];
  };
}
