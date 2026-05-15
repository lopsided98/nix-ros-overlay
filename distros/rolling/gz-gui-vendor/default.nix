
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, protobuf, qt6, tinyxml-2, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-gui-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_gui_vendor-release/archive/release/rolling/gz_gui_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6da0ec3c73ffff051d984333e491df76fdcb56a7cfb0f793155acb121ab7ea53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor protobuf qt6.qt5compat qt6.qtbase qt6.qtdeclarative qt6.qtsvg tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-gui 10.0.0

    Gazebo GUI : Graphical interfaces for robotics applications";
    license = with lib.licenses; [ asl20 ];
  };
}
