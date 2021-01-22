
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-xacro";
  version = "1.11.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/kinetic/xacro/1.11.3-0.tar.gz";
    name = "1.11.3-0.tar.gz";
    sha256 = "c89a5b901d3c6aaff9bb964d2f634e789e6c992229e7f4985ce68e0a0ba7e265";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Xacro (XML Macros)

    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
