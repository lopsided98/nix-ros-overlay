
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp-traits";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_traits/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "e4d18c464c480a0b8955412ef84f15435ebe52b9a0690a8c10384c604b56d174";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cpp-common rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_traits contains the message traits code as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesTraits">MessagesTraits</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
