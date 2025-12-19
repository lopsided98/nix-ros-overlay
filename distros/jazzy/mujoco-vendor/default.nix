
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, xorg }:
buildRosPackage {
  pname = "ros-jazzy-mujoco-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/jazzy/mujoco_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e28992c776b1e381630047ab28fa8c04b1153001b2860926cf68e1a8e700b123";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 xorg.libXcursor xorg.libXi xorg.libXinerama xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for MuJoCo simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
