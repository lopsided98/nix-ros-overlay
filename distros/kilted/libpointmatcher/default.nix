
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-libpointmatcher";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/kilted/libpointmatcher/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "fd21f233a5f6a2cbc2fb1b4e0e06299eeefd663adc8b4dca46b9cf2b9c0e1a2a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen libnabo yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libpointmatcher is a modular ICP library, useful for robotics and computer vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
