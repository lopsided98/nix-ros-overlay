
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mp2p-icp-core, mp2p-icp-viz }:
buildRosPackage {
  pname = "ros-jazzy-mp2p-icp";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/jazzy/mp2p_icp/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "0b4204a14f4b2ff36620673bae888f46cc5cf6d45c3a1f40c3a36f094c5d1a27";
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
