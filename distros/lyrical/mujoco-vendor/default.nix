
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-vendor";
  version = "0.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/lyrical/mujoco_vendor/0.0.8-4.tar.gz";
    name = "0.0.8-4.tar.gz";
    sha256 = "7f69eb8864b24d53d2386e8f7e7f8d0307a6dda9dadde06499d3d392cbbf9063";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
