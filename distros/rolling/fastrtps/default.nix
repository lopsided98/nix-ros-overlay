
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, python3, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-fastrtps";
  version = "2.13.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/rolling/fastrtps/2.13.2-3.tar.gz";
    name = "2.13.2-3.tar.gz";
    sha256 = "58d528748a348e45db6a55be99d8e6f0f587660b0cd251357c99a4062ec57c66";
  };

  buildType = "cmake";
  buildInputs = [ asio cmake ];
  propagatedBuildInputs = [ fastcdr foonathan-memory-vendor openssl python3 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''*eprosima Fast DDS* (formerly Fast RTPS) is a C++ implementation of the DDS (Data Distribution Service) standard of the OMG (Object Management Group). eProsima Fast DDS implements the RTPS (Real Time Publish Subscribe) protocol, which provides publisher-subscriber communications over unreliable transports such as UDP, as defined and maintained by the Object Management Group (OMG) consortium. RTPS is also the wire interoperability protocol defined for the Data Distribution Service (DDS) standard. *eProsima Fast DDS* expose an API to access directly the RTPS protocol, giving the user full access to the protocol internals.'';
    license = with lib.licenses; [ asl20 ];
  };
}
