
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ncurses, roscpp, xclip }:
buildRosPackage {
  pname = "ros-melodic-log-view";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/melodic/log_view/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "c1e9390e841e44f84c5a55bf2ff00596abb7bbb0a663bb86027f6d901645e71d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ncurses roscpp xclip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The log_view package provides a ncurses based terminal GUI for
    viewing and filtering published ROS log messages.

    This is an alternative to rqt_console and swri_console that doesn't depend
    on qt and can be run directly in a terminal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
