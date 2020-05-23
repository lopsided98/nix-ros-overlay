
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-xacro";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/noetic/xacro/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "a574553928486c9ddca24d9c8c17778a63c742d0d47f750ecb7454e11dccf750";
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
