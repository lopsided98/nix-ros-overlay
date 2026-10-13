
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, libx11, openssl, pkg-config, udev }:
buildRosPackage {
  pname = "ros-kilted-librealsense2";
  version = "2.59.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/kilted/librealsense2/2.59.1-1.tar.gz";
    name = "2.59.1-1.tar.gz";
    sha256 = "639af0d358ef9320a05c533ce6be3c7472fc5186f9d1585ef99ced5c5dbf0129";
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
