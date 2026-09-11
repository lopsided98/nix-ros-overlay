
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mola-common, mp2p-icp-core, mrpt-libgui, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mp2p-icp-viz";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/rolling/mp2p_icp_viz/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "28b2f1e01971b91af32ca2118c725b1e05996f06dbc9f310a0bcbc0fced94cbc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ cli11 mola-common mp2p-icp-core mrpt-libgui ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI applications for mp2p_icp: mm-viewer (interactive *.mm map viewer) and icp-log-viewer (ICP log inspector). Kept in a separate package from mp2p_icp_core so headless consumers don't need to pull in mrpt_libgui.";
    license = with lib.licenses; [ bsd3 ];
  };
}
