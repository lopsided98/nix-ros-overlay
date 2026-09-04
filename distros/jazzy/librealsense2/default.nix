
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-jazzy-librealsense2";
  version = "2.58.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/jazzy/librealsense2/2.58.4-1.tar.gz";
    name = "2.58.4-1.tar.gz";
    sha256 = "a22bb7c32ad3e7104c9eec1c78928d23dc495a455e0b9460ae574bf4316a541d";
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
