
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-mujoco-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/rolling/mujoco_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "3ca55d233ce81cd77c15327a7bf4657edc4f7f3c3d6318cec7c1cbf866b87cdb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.12.0";
    license = with lib.licenses; [ asl20 ];
  };
}
