
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ncurses, roscpp, xclip }:
buildRosPackage {
  pname = "ros-kinetic-log-view";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/kinetic/log_view/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "97fb07d1fa563d28b4535e6b2f7c43b7818a800885cb36796cb6d780a99145e8";
  };

  buildType = "catkin";
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
