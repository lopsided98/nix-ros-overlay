
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, protobuf, qt6, tinyxml-2, xorg }:
buildRosPackage {
  pname = "ros-lyrical-gz-gui-vendor";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_gui_vendor-release/archive/release/lyrical/gz_gui_vendor/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "e7ae5fcc8054c0dfef06acf98b7740f04935e7edb65737c2f48bd22368be032f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor protobuf qt6.qt5compat qt6.qtbase qt6.qtdeclarative qt6.qtsvg tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-gui 10.1.0

    Gazebo GUI : Graphical interfaces for robotics applications";
    license = with lib.licenses; [ asl20 ];
  };
}
