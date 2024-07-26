
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, python3, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-fastrtps";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/jazzy/fastrtps/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "2b8ef074c3fc8061b13695d1cc6b92847579883c44877a0a7588589fef698f7b";
  };

  buildType = "cmake";
  buildInputs = [ asio cmake ];
  propagatedBuildInputs = [ fastcdr foonathan-memory-vendor openssl python3 tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "*eprosima Fast DDS* (formerly Fast RTPS) is a C++ implementation of the DDS (Data Distribution Service) standard of the OMG (Object Management Group). eProsima Fast DDS implements the RTPS (Real Time Publish Subscribe) protocol, which provides publisher-subscriber communications over unreliable transports such as UDP, as defined and maintained by the Object Management Group (OMG) consortium. RTPS is also the wire interoperability protocol defined for the Data Distribution Service (DDS) standard. *eProsima Fast DDS* expose an API to access directly the RTPS protocol, giving the user full access to the protocol internals.";
    license = with lib.licenses; [ asl20 ];
  };
}
