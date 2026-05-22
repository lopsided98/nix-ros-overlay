
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, eigen, flatbuffers, libpng, libtins, libzip, mola-kernel, mola-yaml, mrpt-libmaps, mrpt-libobs, openssl, zstd }:
buildRosPackage {
  pname = "ros-rolling-mola-input-ouster";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_ouster-release/archive/release/rolling/mola_input_ouster/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f7bcc78693096e33a6f8c9659177c75391c159e234a6e64e0477161c79fa3fa5";
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
