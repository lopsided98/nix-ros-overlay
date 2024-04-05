
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake }:
buildRosPackage {
  pname = "ros-rolling-fastcdr";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/rolling/fastcdr/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "5987077b5ef6ac55c3a874df847201c162a6ef4862007bdf25710f9b36df2742";
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
