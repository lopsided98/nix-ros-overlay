
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-fastcdr";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/rolling/fastcdr/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "5546c62514d15472b3ca0308c89683399df5514d942b1acc6162e3afb7f1b35b";
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
