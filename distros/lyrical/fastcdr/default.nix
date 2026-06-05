
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-lyrical-fastcdr";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/lyrical/fastcdr/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "c5891a5df3c00e92b8788db46263e3bcabd2949cd87200bed9033a3dcf2ea357";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "*eProsima Fast CDR* is a C++ serialization library implementing the Common Data Representation (CDR) mechanism defined by the Object Management Group (OMG) consortium. CDR is the serialization mechanism used in DDS for the DDS Interoperability Wire Protocol (DDSI-RTPS).";
    license = with lib.licenses; [ asl20 ];
  };
}
