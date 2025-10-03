
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake }:
buildRosPackage {
  pname = "ros-kilted-fastcdr";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/kilted/fastcdr/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "69371bb0b9218df07a65794fb418ec5550c7c1e81e1a62250b629367c0541d4c";
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
