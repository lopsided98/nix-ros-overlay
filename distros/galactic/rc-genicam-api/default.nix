
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libpng, libusb1 }:
buildRosPackage {
  pname = "ros-galactic-rc-genicam-api";
  version = "2.5.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_api-release/archive/release/galactic/rc_genicam_api/2.5.12-1.tar.gz";
    name = "2.5.12-1.tar.gz";
    sha256 = "ae1ec1a577d6e34166df7ac90d2676c1c1e6ef81b2c2cba10b4a67441fe956a1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ libpng libusb1 ];
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
