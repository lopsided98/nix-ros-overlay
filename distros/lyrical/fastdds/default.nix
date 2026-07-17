
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, python3, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-fastdds";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastdds-release/archive/release/lyrical/fastdds/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "3b04d9a502c27b76967ca61264c3bd7bc8c569ec4e8b515499c7206e979c448b";
  };

  buildType = "cmake";
  buildInputs = [ asio cmake ];
  propagatedBuildInputs = [ fastcdr foonathan-memory-vendor openssl python3 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "eProsima Fast DDS is a C++ implementation of the DDS (Data Distribution Service) standard of the OMG (Object Management Group). eProsima Fast DDS implements the RTPS (Real Time Publish Subscribe) protocol, which provides publisher-subscriber communications over unreliable transports such as UDP, as defined and maintained by the Object Management Group (OMG) consortium. RTPS is also the wire interoperability protocol defined for the Data Distribution Service (DDS) standard. eProsima Fast DDS expose an API to access directly the RTPS protocol, giving the user full access to the protocol internals.";
    license = with lib.licenses; [ asl20 ];
  };
}
