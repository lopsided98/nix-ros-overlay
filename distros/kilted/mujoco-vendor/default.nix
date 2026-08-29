
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-mujoco-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/kilted/mujoco_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "8e3704b6eb92307f12f6d069852911229d987f19d9f57089905fa038cf5b23b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.12.0";
    license = with lib.licenses; [ asl20 ];
  };
}
