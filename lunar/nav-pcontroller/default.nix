
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, move-base-msgs, roslib, visualization-msgs, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav-pcontroller";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/code-iai-release/nav_pcontroller-release/archive/release/lunar/nav_pcontroller/0.1.4-0.tar.gz;
    sha256 = "5f78cd0dd13731aab9886e578ad0cccd71b24b2f3a93f1467b73bc31a58a6141";
  };

  buildInputs = [ tf sensor-msgs roscpp move-base-msgs visualization-msgs actionlib std-msgs roslib geometry-msgs ];
  propagatedBuildInputs = [ tf sensor-msgs roscpp move-base-msgs visualization-msgs actionlib std-msgs roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple P-Controller for a holonomic robot base'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
