
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, sound-play }:
buildRosPackage {
  pname = "ros-melodic-aques-talk";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/aques_talk/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "44a514bca2a5779849875e31040927929d95f8c70b24752092a983f4cc4e4d88";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface aques_talk demo program'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
