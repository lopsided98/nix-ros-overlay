
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-mujoco-vendor";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/rolling/mujoco_vendor/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "372699e54e03a02d14512cf41e1bf5b0d513c2a939bdbb3b3227a5d77f4fd7e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
