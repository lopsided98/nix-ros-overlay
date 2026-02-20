
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, binutils, cmake, elfutils, freeglut, freeimage, gbenchmark, glew, gz-cmake-vendor, gz-common-vendor, gz-fuel-tools-vendor, gz-gui-vendor, gz-math-vendor, gz-msgs-vendor, gz-physics-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sensors-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, libdwarf, libwebsockets, protobuf, python3Packages, qt6, sdformat-vendor, tinyxml-2, util-linux, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-sim-vendor";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sim_vendor-release/archive/release/rolling/gz_sim_vendor/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "26a333cd2d0e855f25dfa6fa23bcad2f2bcfaf2beb2e073749e6cfa0f9b52238";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest xorg.xorgserver ];
  propagatedBuildInputs = [ binutils elfutils freeglut freeimage gbenchmark glew gz-cmake-vendor gz-common-vendor gz-fuel-tools-vendor gz-gui-vendor gz-math-vendor gz-msgs-vendor gz-physics-vendor gz-plugin-vendor gz-rendering-vendor gz-sensors-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor libdwarf libwebsockets protobuf python3Packages.pybind11 qt6.qt5compat qt6.qtbase qt6.qtdeclarative sdformat-vendor tinyxml-2 util-linux xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sim 10.1.1

    Gazebo Sim : A Robotic Simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
