
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-humble-mujoco-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/humble/mujoco_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "12446cae5e97d761fbe48f8c6854e6e2a28bc505ca358a2f35eb5591f745f555";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.12.0";
    license = with lib.licenses; [ asl20 ];
  };
}
