
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-gui, mrpt-maps, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-kilted-mola-viz";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_viz/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "1752fdb9d7a03893824a5ce574c49e3917c655e69ab96749676ce832da0ecd7a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-gui mrpt-maps mrpt-opengl mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
