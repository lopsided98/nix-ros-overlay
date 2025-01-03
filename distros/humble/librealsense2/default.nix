
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-humble-librealsense2";
  version = "2.55.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/humble/librealsense2/2.55.1-1.tar.gz";
    name = "2.55.1-1.tar.gz";
    sha256 = "c4f80335f89d731dc6320a7453c69772e9d2351b94220e6e82f0400a40e06385";
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
