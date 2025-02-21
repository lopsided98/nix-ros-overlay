
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, freeglut, freeimage, gbenchmark, glew, gz-cmake-vendor, gz-common-vendor, gz-fuel-tools-vendor, gz-gui-vendor, gz-math-vendor, gz-msgs-vendor, gz-physics-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sensors-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, protobuf, python3Packages, qt5, sdformat-vendor, tinyxml-2, util-linux, xorg }:
buildRosPackage {
  pname = "ros-jazzy-gz-sim-vendor";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sim_vendor-release/archive/release/jazzy/gz_sim_vendor/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "53b946ba26654cef76ab53fd13e3f3b84806f3cb84c21f0b938360627265c99e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest xorg.xorgserver ];
  propagatedBuildInputs = [ freeglut freeimage gbenchmark glew gz-cmake-vendor gz-common-vendor gz-fuel-tools-vendor gz-gui-vendor gz-math-vendor gz-msgs-vendor gz-physics-vendor gz-plugin-vendor gz-rendering-vendor gz-sensors-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor protobuf python3Packages.pybind11 qt5.qtbase qt5.qtdeclarative qt5.qtgraphicaleffects qt5.qtquickcontrols qt5.qtquickcontrols2 sdformat-vendor tinyxml-2 util-linux xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sim8 8.9.0

    Gazebo Sim : A Robotic Simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
