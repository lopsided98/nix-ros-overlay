
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, sound-play }:
buildRosPackage {
  pname = "ros-melodic-aques-talk";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/aques_talk/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "82869afa17eba0e36a858850f810ec92304ee2332d37868e5c03cd20fa399fe6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface aques_talk demo program'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
