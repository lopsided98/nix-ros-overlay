
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-rolling-librealsense2";
  version = "2.58.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/rolling/librealsense2/2.58.2-1.tar.gz";
    name = "2.58.2-1.tar.gz";
    sha256 = "734ee15ccb79dfc61f2b90b36866549cd9aa168f1391a4635151c10428c2b9a1";
  };

  buildType = "cmake";
  buildInputs = [ cmake git libusb1 openssl pkg-config udev ];
  propagatedBuildInputs = [ glfw3 libGL libGLU libx11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.";
    license = with lib.licenses; [ asl20 ];
  };
}
