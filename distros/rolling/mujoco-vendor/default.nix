
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, glfw3, libxkbcommon, pkg-config, wayland, xorg }:
buildRosPackage {
  pname = "ros-rolling-mujoco-vendor";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_vendor-release/archive/release/rolling/mujoco_vendor/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "4bb1ccc23eb8736f4fd5c9227f666bd38c88f4791d4d1dec5177a96ba8e5ba0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git glfw3 libxkbcommon pkg-config wayland xorg.libX11 xorg.libXcursor xorg.libXi xorg.libXinerama xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for MuJoCo simulator of version 3.4.0";
    license = with lib.licenses; [ asl20 ];
  };
}
