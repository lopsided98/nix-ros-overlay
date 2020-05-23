
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-traits";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_traits/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "6714f4f38a04669ecff9cfa49c6af5e7a17cc5b3b5d433cbdaca0b8bbfaad28f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_traits contains the message traits code as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesTraits">MessagesTraits</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
