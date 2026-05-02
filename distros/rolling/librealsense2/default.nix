
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-rolling-librealsense2";
  version = "2.57.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/rolling/librealsense2/2.57.7-2.tar.gz";
    name = "2.57.7-2.tar.gz";
    sha256 = "5994489f485b155766b4497fa8a074b78fa1ad6d33dba285522c293e776ffb25";
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
