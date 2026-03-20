
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-humble-mujoco-vendor";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/humble/mujoco_vendor/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "ac1eed553f0f60bb8f8bffb5bc328a1a1d85b1c39a30767deb478ead9b7587f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
