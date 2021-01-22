
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, rostime }:
buildRosPackage {
  pname = "ros-kinetic-roscpp-traits";
  version = "0.6.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/roscpp_traits/0.6.11-0.tar.gz";
    name = "0.6.11-0.tar.gz";
    sha256 = "16f0dd90dafd0bb3af9fd26882bdfa60f6c1aa0cd84437f113ed2507d617da3f";
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
