
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosout";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosout/1.14.3-0.tar.gz;
    sha256 = "3699399910840cdbd100ffa9f27e0ef478f516c1d3409c7f62d6af8e3ca59cc6";
  };

  propagatedBuildInputs = [ rosgraph-msgs roscpp ];
  nativeBuildInputs = [ rosgraph-msgs catkin roscpp ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    #license = lib.licenses.BSD;
  };
}
