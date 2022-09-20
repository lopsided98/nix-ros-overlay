
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy }:
buildRosPackage {
  pname = "ros-melodic-timed-roslaunch";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/MoriKen254/timed_roslaunch-release/archive/release/melodic/timed_roslaunch/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "bc837c15627dd4cbf4eef4543e75d3240948dcc6d0671941723ecece6ff3bdfd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Script to delay the launch of a roslaunch file'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
