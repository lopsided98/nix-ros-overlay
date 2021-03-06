
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libpng, libusb }:
buildRosPackage {
  pname = "ros-noetic-rc-genicam-api";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_api-release/archive/release/noetic/rc_genicam_api/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "51cd256ebff104f226ffa2e131c977c774f1789e0099e3e572a4162401f83371";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ libpng libusb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''GenICam/GigE Vision Convenience Layer.

      This package combines the Roboception convenience layer for images with the
      GenICam reference implementation and a GigE Vision transport layer. It is a
      self contained package that permits configuration and image streaming of
      GenICam / GigE Vision 2.0 compatible cameras like the Roboception rc_visard.

      This package also provides some tools that can be called from the command line
      for discovering cameras, changing their configuration and streaming images.
      Although the tools are meant to be useful when working in a shell or in a
      script, their main purpose is to serve as example on how to use the API for
      reading and setting parameters, streaming and synchronizing images.

      See LICENSE.md for licensing terms of the different parts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
