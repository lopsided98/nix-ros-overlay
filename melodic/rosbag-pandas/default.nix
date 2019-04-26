
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, pythonPackages, rospy-message-converter, roslib }:
buildRosPackage {
  pname = "ros-melodic-rosbag-pandas";
  version = "0.5.3";

  src = fetchurl {
    url = https://github.com/eurogroep/rosbag_pandas-release/archive/release/melodic/rosbag_pandas/0.5.3-0.tar.gz;
    sha256 = "a1e49a019fe7770b6a4de2ba9c8551c78e6288b2a32f7da4227f97d48e929a9f";
  };

  propagatedBuildInputs = [ rospy-message-converter pythonPackages.numpy pythonPackages.pandas rosbag roslib pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    #license = lib.licenses.Apache-2.0;
  };
}
