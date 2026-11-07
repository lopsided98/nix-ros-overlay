
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-path-planning-apps, mrpt-path-planning-core }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-path-planning";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/lyrical/mrpt_path_planning/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "33580810983cdcffddd8c3a926130dc3f54e653096fc03816578cedb961cb13a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-path-planning-apps mrpt-path-planning-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage for mrpt_path_planning: depends on mrpt_path_planning_core (headless path-planning library) and mrpt_path_planning_apps (CLI/GUI applications).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
