
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-path-planning-apps, mrpt-path-planning-core }:
buildRosPackage {
  pname = "ros-humble-mrpt-path-planning";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/humble/mrpt_path_planning/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fa87eb2613fcbc9327dc956c998de349f32f1197401e8c7dad4a3b482c8476c0";
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
