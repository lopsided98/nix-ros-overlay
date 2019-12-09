
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, sicktoolbox, catkin, roscpp, rosconsole, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-sicktoolbox-wrapper";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sicktoolbox_wrapper-release/archive/release/kinetic/sicktoolbox_wrapper/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "c7c273dfb880f3cef95b46fe1d6d3f593429066a0e438389204d800adae1a5c9";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs sicktoolbox roscpp diagnostic-updater rosconsole ];
  propagatedBuildInputs = [ sensor-msgs sicktoolbox roscpp diagnostic-updater rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sicktoolbox_wrapper is a ROS wrapper for the outstanding <a href="http://www.ros.org/wiki/sicktoolbox">sicktoolbox</a>
    library for interfacing with the SICK LMS2xx lasers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
