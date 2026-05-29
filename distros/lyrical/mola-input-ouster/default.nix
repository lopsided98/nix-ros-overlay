
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, eigen, flatbuffers, libpng, libtins, libzip, mola-kernel, mola-yaml, mrpt-libmaps, mrpt-libobs, openssl, zstd }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-ouster";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_ouster-release/archive/release/lyrical/mola_input_ouster/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c7f9722dcdb7292076b3fd9e53e5637cc6570918f2f1e6913b60e8a976aac98c";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen flatbuffers libpng libtins libzip openssl zstd ];
  propagatedBuildInputs = [ curl mola-kernel mola-yaml mrpt-libmaps mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA input module for Ouster LiDAR sensors using the native Ouster C++ SDK.
    Provides direct sensor connection and PCAP replay without ROS middleware.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
