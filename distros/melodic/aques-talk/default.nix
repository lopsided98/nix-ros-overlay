
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, sound-play }:
buildRosPackage {
  pname = "ros-melodic-aques-talk";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/aques_talk/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "7191cc0e6140068f22c72a4b7e86b33bdcbce88621a32d2d0acdee3139638533";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface aques_talk demo program'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
