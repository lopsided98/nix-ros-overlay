
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-kilted-librealsense2";
  version = "2.58.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/kilted/librealsense2/2.58.1-1.tar.gz";
    name = "2.58.1-1.tar.gz";
    sha256 = "6e686ce2475688c38bfb169f905d20414c3a61f753ff7c7ae6cb2138c1de866f";
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
