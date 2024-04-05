
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-xacro";
  version = "1.14.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/noetic/xacro/1.14.18-1.tar.gz";
    name = "1.14.18-1.tar.gz";
    sha256 = "3c39ad045935eabc86e4cb577f3217d71bd1ae50be0b7aaa517cceb1ed494518";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Xacro (XML Macros)

    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
