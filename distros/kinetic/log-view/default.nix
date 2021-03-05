
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ncurses, roscpp, xclip }:
buildRosPackage {
  pname = "ros-kinetic-log-view";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/kinetic/log_view/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "d9ed1334fbd271510b5e34f56ca9f74759ce0025184f3dd880a62310d8805660";
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
