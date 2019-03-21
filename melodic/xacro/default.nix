
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, roslaunch, catkin, roslint }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.3-0.tar.gz;
    sha256 = "ef77d1f894a192888232b7b545b9f2748713066bae5c139644af3734aa09541d";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin roslint ];

  meta = {
    description = ''Xacro (XML Macros)

    Xacro is an XML macro language. With xacro, you can construct shorter and more readable XML files by using macros that expand to larger XML expressions.'';
    #license = lib.licenses.BSD;
  };
}
