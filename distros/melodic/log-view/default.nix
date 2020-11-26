
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ncurses, roscpp, xclip }:
buildRosPackage {
  pname = "ros-melodic-log-view";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/melodic/log_view/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c36f31bd5a430ddddc1736c08b0ff68cfcdd556f35c57c4756b10e7062811ebb";
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
