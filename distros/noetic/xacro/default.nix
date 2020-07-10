
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-xacro";
  version = "1.14.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/noetic/xacro/1.14.3-2.tar.gz";
    name = "1.14.3-2.tar.gz";
    sha256 = "67e6b271290c3da827fc8835fc678a19089e4c1afbaefceb1fc0bb8d43edae0c";
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
