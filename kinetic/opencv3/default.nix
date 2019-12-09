
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, protobuf, ffmpeg, pythonPackages, libjpeg, catkin, libwebp, cmake, vtkWithQt4, libtiff, python, libv4l, zlib, libpng }:
buildRosPackage {
  pname = "ros-kinetic-opencv3";
  version = "3.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/opencv3-release/archive/release/kinetic/opencv3/3.3.1-5.tar.gz";
    name = "3.3.1-5.tar.gz";
    sha256 = "49a1574305a96dd2d2f940948b53d78244d44529369c205c994ae5f6d529599b";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.numpy protobuf ffmpeg libjpeg libwebp vtkWithQt4 libtiff python libv4l zlib libpng ];
  propagatedBuildInputs = [ pythonPackages.numpy protobuf ffmpeg catkin libjpeg libwebp vtkWithQt4 python zlib libpng ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenCV 3.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
