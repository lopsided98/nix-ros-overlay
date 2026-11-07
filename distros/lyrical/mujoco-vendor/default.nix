
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/lyrical/mujoco_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "f5a441182701b535420f5748a1996945391bd1cf12cb62645573a450efb5ab41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.12.0";
    license = with lib.licenses; [ asl20 ];
  };
}
