
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, sound-play }:
buildRosPackage {
  pname = "ros-melodic-aques-talk";
  version = "2.1.22-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/aques_talk/2.1.22-1.tar.gz";
    name = "2.1.22-1.tar.gz";
    sha256 = "a537e5c2bd122d9506710191541a9660a88daa1129f35b974d0fa9bce60a31e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface aques_talk demo program'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
