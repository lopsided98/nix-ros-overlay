
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, ffmpeg, libjpeg, libpng, libtiff, libv4l, libwebp, protobuf, python, pythonPackages, vtkWithQt4, zlib }:
buildRosPackage {
  pname = "ros-kinetic-opencv3";
  version = "3.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/opencv3-release/archive/release/kinetic/opencv3/3.3.1-5.tar.gz";
    name = "3.3.1-5.tar.gz";
    sha256 = "49a1574305a96dd2d2f940948b53d78244d44529369c205c994ae5f6d529599b";
  };

  buildType = "cmake";
  buildInputs = [ libtiff libv4l ];
  propagatedBuildInputs = [ catkin ffmpeg libjpeg libpng libwebp protobuf python pythonPackages.numpy vtkWithQt4 zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenCV 3.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
