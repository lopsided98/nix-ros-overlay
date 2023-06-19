
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, python3, tinyxml-2 }:
buildRosPackage {
  pname = "ros-iron-fastrtps";
  version = "2.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/iron/fastrtps/2.10.1-2.tar.gz";
    name = "2.10.1-2.tar.gz";
    sha256 = "1265b1da344f1b511e137ac7494510d1d24b90aeedd42e896a9573d02efc38c6";
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
