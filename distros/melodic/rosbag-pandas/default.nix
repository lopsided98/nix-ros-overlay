
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbag, roslib, rospy-message-converter }:
buildRosPackage {
  pname = "ros-melodic-rosbag-pandas";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/eurogroep/rosbag_pandas-release/archive/release/melodic/rosbag_pandas/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "a1e49a019fe7770b6a4de2ba9c8551c78e6288b2a32f7da4227f97d48e929a9f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pandas rosbag roslib rospy-message-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
