
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ncurses, roscpp, xclip }:
buildRosPackage {
  pname = "ros-noetic-log-view";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/noetic/log_view/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ae83c301379e194490f5aa2a392d6a2b20986be11b5a36ff1d8bfff993c24e1d";
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
