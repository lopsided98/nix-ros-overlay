
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-mujoco-vendor";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/kilted/mujoco_vendor/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "c6b8d0cf05f92b5d449d0297334ebf0dbf343b8c2ee677f7213e3c8b0800e42d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
