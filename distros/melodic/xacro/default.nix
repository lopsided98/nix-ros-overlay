
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.6-1.tar.gz";
    name = "1.13.6-1.tar.gz";
    sha256 = "bd891b5fe7f3326b616f39b39b56cc961d2ddf8f088eecd836be19b068e55fdd";
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
