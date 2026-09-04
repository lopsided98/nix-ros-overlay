
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-lyrical-librealsense2";
  version = "2.58.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/lyrical/librealsense2/2.58.4-1.tar.gz";
    name = "2.58.4-1.tar.gz";
    sha256 = "d5680ba7c51c729194a0edbaf9702c85a784fbac15f996f14eaf6609a4487b3e";
  };

  buildType = "cmake";
  buildInputs = [ cmake git libusb1 openssl pkg-config udev ];
  propagatedBuildInputs = [ glfw3 libGL libGLU libx11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Library for controlling and capturing data from the RealSense depth streaming devices.";
    license = with lib.licenses; [ asl20 ];
  };
}
