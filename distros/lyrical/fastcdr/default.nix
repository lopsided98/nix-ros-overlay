
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake }:
buildRosPackage {
  pname = "ros-lyrical-fastcdr";
  version = "2.3.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/lyrical/fastcdr/2.3.5-3.tar.gz";
    name = "2.3.5-3.tar.gz";
    sha256 = "22fe20e8b25dc38f7d5574a1df39590d79f48472f5f4149f2fa04ed1a9625841";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake ament-cmake-gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "*eProsima Fast CDR* is a C++ serialization library implementing the Common Data Representation (CDR) mechanism defined by the Object Management Group (OMG) consortium. CDR is the serialization mechanism used in DDS for the DDS Interoperability Wire Protocol (DDSI-RTPS).";
    license = with lib.licenses; [ asl20 ];
  };
}
