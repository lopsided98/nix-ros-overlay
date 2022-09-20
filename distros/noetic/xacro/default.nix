
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-xacro";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/noetic/xacro/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "da0265272c2cb9ae4842f23acfd181924500e61951afec6ab483d839ac322ca2";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Xacro (XML Macros)

    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
