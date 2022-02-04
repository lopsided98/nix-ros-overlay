
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.15-1.tar.gz";
    name = "1.13.15-1.tar.gz";
    sha256 = "0f01804df71628567ea2ff5bbec1adeba929552ab70a6e2a09d4a1c6086825b1";
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
