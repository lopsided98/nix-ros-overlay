
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-humble-librealsense2";
  version = "2.58.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/humble/librealsense2/2.58.1-1.tar.gz";
    name = "2.58.1-1.tar.gz";
    sha256 = "407a71fd8de9d04d8372b60674cab208bb8be9397aa6a18e82b86cb9ae508bae";
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
