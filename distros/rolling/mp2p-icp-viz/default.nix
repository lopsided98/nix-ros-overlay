
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, freeglut, glfw3, mola-common, mp2p-icp-core, mrpt-libgui, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mp2p-icp-viz";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/rolling/mp2p_icp_viz/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "e764ce2faca47441950b67729311d333ffedded1ca1db903f03eb9e28fbdae98";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ cli11 freeglut glfw3 mola-common mp2p-icp-core mrpt-libgui ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI applications for mp2p_icp: mm-viewer (interactive *.mm map viewer) and icp-log-viewer (ICP log inspector). Kept in a separate package from mp2p_icp_core so headless consumers don't need to pull in mrpt_libgui.";
    license = with lib.licenses; [ bsd3 ];
  };
}
