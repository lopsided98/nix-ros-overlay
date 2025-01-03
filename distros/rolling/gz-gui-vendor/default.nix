
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, protobuf, qt5, tinyxml-2, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-gui-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_gui_vendor-release/archive/release/rolling/gz_gui_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2fe096efcbc287f9f45b6c9444df488b84328c5db53b4b960445af3de1d7dfa5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor protobuf qt5.qtbase qt5.qtcharts qt5.qtdeclarative qt5.qtgraphicaleffects qt5.qtlocation qt5.qtpositioning qt5.qtquickcontrols qt5.qtquickcontrols2 tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-gui9 9.0.0

    Gazebo GUI : Graphical interfaces for robotics applications";
    license = with lib.licenses; [ asl20 ];
  };
}
