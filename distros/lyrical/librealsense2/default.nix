
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, glfw3, libGL, libGLU, libusb1, openssl, pkg-config, udev, xorg }:
buildRosPackage {
  pname = "ros-lyrical-librealsense2";
  version = "2.57.7-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense2-release/archive/release/lyrical/librealsense2/2.57.7-7.tar.gz";
    name = "2.57.7-7.tar.gz";
    sha256 = "b69a5e1757518bf3fd5dde00ba40f01345785b860f7ba1557ff1ad00d6be7151";
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
