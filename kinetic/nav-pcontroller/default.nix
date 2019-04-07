
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, move-base-msgs, roslib, visualization-msgs, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-pcontroller";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/code-iai-release/nav_pcontroller-release/archive/release/kinetic/nav_pcontroller/0.1.4-0.tar.gz;
    sha256 = "f07a4ac45bda0e3059d990500c8004f69915d9db360cd19c241b27910a06f723";
  };

  buildInputs = [ tf sensor-msgs roscpp move-base-msgs roslib actionlib std-msgs visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ tf sensor-msgs roscpp move-base-msgs roslib actionlib std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple P-Controller for a holonomic robot base'';
    #license = lib.licenses.BSD;
  };
}
