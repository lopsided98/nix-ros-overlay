
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, roslaunch, catkin, roslint }:
buildRosPackage {
  pname = "ros-lunar-xacro";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/xacro-release/archive/release/lunar/xacro/1.12.2-0.tar.gz;
    sha256 = "788c560b1296d55446d7803e8907c85b61a6f655b9ebcd89c54e17d8f2eb4531";
  };

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
