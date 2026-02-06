
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, python3, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-fastdds";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastdds-release/archive/release/rolling/fastdds/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "e7bc727f325089fd6881e4838c72f46e81c0209a7a59e7e5dd8ff2364c276a08";
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
