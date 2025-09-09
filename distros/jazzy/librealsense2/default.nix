
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-jazzy-librealsense2";
  version = "2.56.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/jazzy/librealsense2/2.56.4-1.tar.gz";
    name = "2.56.4-1.tar.gz";
    sha256 = "14356b1ace906cb85e03b5245ebe203979bc3f49ea0090fce3cccda06b1e9ffa";
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
