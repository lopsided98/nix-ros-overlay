
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-gui, mrpt-nav, mrpt-path-planning-core, mvsim }:
buildRosPackage {
  pname = "ros-kilted-mrpt-path-planning-apps";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/kilted/mrpt_path_planning_apps/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1c877d8e9dc7afc208a0e9ea686f3b33b8ec487ea2d5313ac4773d7faea0b365";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 mrpt-gui mrpt-nav mrpt-path-planning-core mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI and GUI applications for mrpt_path_planning: path-planner-cli (opens a 3D viz window) and selfdriving-simulator-gui (requires mvsim). Kept in a separate package from mrpt_path_planning_core so headless consumers don't need to pull in mrpt_libgui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
