
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-jazzy-librealsense2";
  version = "2.55.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/librealsense2-release/archive/release/jazzy/librealsense2/2.55.1-1.tar.gz";
    name = "2.55.1-1.tar.gz";
    sha256 = "882b7132b60a543b6c0604c3db2058731647df45ff147454d48a9fba4ddbadad";
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
