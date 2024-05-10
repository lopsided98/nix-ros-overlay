
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-iron-librealsense2";
  version = "2.55.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/iron/librealsense2/2.55.1-1.tar.gz";
    name = "2.55.1-1.tar.gz";
    sha256 = "a21de9b4e02b582aa4c3b6a23ab73b0ce3ac0915dcd061ce7fcf5bd4b3ed1ae3";
  };

  buildType = "cmake";
  buildInputs = [ cmake git libusb1 openssl pkg-config udev ];
  propagatedBuildInputs = [ glfw3 libGL libGLU xorg.libX11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Library for controlling and capturing data from the Intel(R) RealSense(TM) D400 devices.";
    license = with lib.licenses; [ asl20 ];
  };
}
