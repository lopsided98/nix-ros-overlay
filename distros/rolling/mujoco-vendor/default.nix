
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, patchelf, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-mujoco-vendor";
  version = "0.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/rolling/mujoco_vendor/0.0.8-3.tar.gz";
    name = "0.0.8-3.tar.gz";
    sha256 = "be7906dc913a6757bcdc64206d1e847b5dac8e40d2e78732a027633cdca07887";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git patchelf ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
