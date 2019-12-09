
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, rostest, roslint }:
buildRosPackage {
  pname = "ros-melodic-xacro";
  version = "1.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/melodic/xacro/1.13.4-1.tar.gz";
    name = "1.13.4-1.tar.gz";
    sha256 = "2f4797a60fdb2ac1dbbaa681b2fa1d5e035a34645fe9dcfd9ea1006e3f507b73";
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
