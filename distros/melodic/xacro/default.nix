
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.20-1.tar.gz";
    name = "1.13.20-1.tar.gz";
    sha256 = "f5834e9e61294483133b7b0d47b797f39b139849bc5f213cd7279033353a1e76";
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
