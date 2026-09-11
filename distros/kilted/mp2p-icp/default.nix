
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mp2p-icp-core, mp2p-icp-viz }:
buildRosPackage {
  pname = "ros-kilted-mp2p-icp";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/kilted/mp2p_icp/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "75bbc2577bceb3e47190197dbd7eba9228e5a5dd4f54ed4e5e706d0cb3a26a9c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mp2p-icp-core mp2p-icp-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage for mp2p_icp: depends on mp2p_icp_core (headless libraries and CLI applications) and mp2p_icp_viz (GUI applications).";
    license = with lib.licenses; [ bsd3 ];
  };
}
