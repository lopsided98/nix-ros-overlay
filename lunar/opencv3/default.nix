
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, libwebp, catkin, pythonPackages, libtiff, ffmpeg, libv4l, libjpeg, vtkWithQt4, zlib, protobuf, cmake, libpng }:
buildRosPackage {
  pname = "ros-lunar-opencv3";
  version = "3.3.1-r2";

  src = fetchurl {
    url = https://github.com/ros-gbp/opencv3-release/archive/release/lunar/opencv3/3.3.1-2.tar.gz;
    sha256 = "30d91fc5b68075431066b13ece086b2a78f9e9195c7046f86e0a4a0f9c68d1aa";
  };

  buildInputs = [ python libwebp pythonPackages.numpy libtiff libv4l ffmpeg libjpeg vtkWithQt4 zlib protobuf libpng ];
  propagatedBuildInputs = [ python libwebp pythonPackages.numpy catkin ffmpeg libjpeg vtkWithQt4 zlib protobuf libpng ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenCV 3.x'';
    #license = lib.licenses.BSD;
  };
}
