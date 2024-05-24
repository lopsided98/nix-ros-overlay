
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake }:
buildRosPackage {
  pname = "ros-jazzy-fastcdr";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/jazzy/fastcdr/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "a50ed36bb5448d82c0b89e69260a30a02cc2dd3278c4e6f3ece3ad9dbf788eac";
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
