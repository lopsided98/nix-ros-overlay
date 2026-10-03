
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, glfw3, mola-common, mp2p-icp-core, mrpt-gui, mrpt-imgui, mrpt-imgui-vendor, mrpt-opengl, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mp2p-icp-viz";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/kilted/mp2p_icp_viz/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "c6e0c66f8f7211e9195a21fa7aa314f11feb041e5ff5e8a867335d983d730249";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ cli11 glfw3 mola-common mp2p-icp-core mrpt-gui mrpt-imgui mrpt-imgui-vendor mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI applications for mp2p_icp: mm-viewer (interactive *.mm map viewer) and icp-log-viewer (ICP log inspector). Kept in a separate package from mp2p_icp_core so headless consumers don't need to pull in mrpt_gui.";
    license = with lib.licenses; [ bsd3 ];
  };
}
