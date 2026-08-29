
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mp2p-icp-core, mp2p-icp-viz }:
buildRosPackage {
  pname = "ros-lyrical-mp2p-icp";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/lyrical/mp2p_icp/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "ab1bfabb94fc454d2fa647c7c27827dc6be5cbb491b88bb4fed61c86a020a53b";
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
