
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-xacro";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/xacro-release/archive/release/noetic/xacro/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "e49a02c2868315b91934b9c8037d3a57e5949825fb38a4f7c7959321c68651b1";
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
