
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, libwebp, catkin, pythonPackages, libtiff, ffmpeg, libv4l, libjpeg, vtkWithQt4, zlib, protobuf, cmake, libpng }:
buildRosPackage {
  pname = "ros-kinetic-opencv3";
  version = "3.3.1-r5";

  src = fetchurl {
    url = https://github.com/ros-gbp/opencv3-release/archive/release/kinetic/opencv3/3.3.1-5.tar.gz;
    sha256 = "49a1574305a96dd2d2f940948b53d78244d44529369c205c994ae5f6d529599b";
  };

  buildInputs = [ python libwebp pythonPackages.numpy libtiff libv4l ffmpeg libjpeg vtkWithQt4 zlib protobuf libpng ];
  propagatedBuildInputs = [ python libwebp pythonPackages.numpy catkin ffmpeg libjpeg vtkWithQt4 zlib protobuf libpng ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenCV 3.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
