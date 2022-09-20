
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-traits";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_traits/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "4393d3b11553d92ae6044533a06583b40ffa8914b08ccf8127d0cb49ee1dbddf";
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
