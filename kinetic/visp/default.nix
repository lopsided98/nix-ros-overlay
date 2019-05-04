
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ogre1_9, libpng12, libdmtx, libxml2, opencv3, xorg, libdc1394, freenect, doxygen, liblapack, zbar, cmake, libjpeg, libv4l, ois, bzip2, libusb, eigen }:
buildRosPackage {
  pname = "ros-kinetic-visp";
  version = "3.2.0-r3";

  src = fetchurl {
    url = https://github.com/lagadic/visp-release/archive/release/kinetic/visp/3.2.0-3.tar.gz;
    sha256 = "5ffb715ba5cbd4a51d8e9c2dfa10e254ee5e99d965adc58b1f5b51b84e5ca948";
  };

  buildInputs = [ ogre1_9 libpng12 libxml2 libdmtx opencv3 libdc1394 freenect doxygen liblapack zbar libjpeg xorg.libX11 libv4l ois bzip2 libusb eigen ];
  propagatedBuildInputs = [ ogre1_9 libpng12 libxml2 libdmtx opencv3 libdc1394 freenect liblapack zbar libjpeg xorg.libX11 libv4l ois bzip2 libusb eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ViSP standing for Visual Servoing Platform is a modular cross
    platform library that allows prototyping and developing applications
    using visual tracking and visual servoing technics at the heart of the
    researches done by Inria Lagadic team. ViSP is able to compute control
    laws that can be applied to robotic systems. It provides a set of visual
    features that can be tracked using real time image processing or computer
    vision algorithms. ViSP provides also simulation capabilities.

    ViSP can be useful in robotics, computer vision, augmented reality
    and computer animation.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
