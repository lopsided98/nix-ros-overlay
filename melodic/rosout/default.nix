
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosout";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosout/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "3699399910840cdbd100ffa9f27e0ef478f516c1d3409c7f62d6af8e3ca59cc6";
  };

  buildType = "catkin";
  buildInputs = [ rosgraph-msgs roscpp ];
  propagatedBuildInputs = [ rosgraph-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
