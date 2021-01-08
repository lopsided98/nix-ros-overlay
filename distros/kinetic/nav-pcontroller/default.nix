
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, roscpp, roslib, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-pcontroller";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/code-iai-release/nav_pcontroller-release/archive/release/kinetic/nav_pcontroller/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "f07a4ac45bda0e3059d990500c8004f69915d9db360cd19c241b27910a06f723";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib geometry-msgs move-base-msgs roscpp roslib sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple P-Controller for a holonomic robot base'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
