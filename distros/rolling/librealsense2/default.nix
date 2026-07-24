
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-rolling-librealsense2";
  version = "2.58.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/rolling/librealsense2/2.58.3-2.tar.gz";
    name = "2.58.3-2.tar.gz";
    sha256 = "63f00a7bc2f0689b6dceea05daf0a33c1311191b5040e0ea505f73b6d558ca3a";
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
