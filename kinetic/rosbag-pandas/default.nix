
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, pythonPackages, rospy-message-converter, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-pandas";
  version = "0.5.3";

  src = fetchurl {
    url = https://github.com/eurogroep/rosbag_pandas-release/archive/release/kinetic/rosbag_pandas/0.5.3-0.tar.gz;
    sha256 = "ccb91d27be7b9e22b42ac6c14bdbc83aad6949ba7030144cb04183a957cbc9a9";
  };

  propagatedBuildInputs = [ pythonPackages.numpy rosbag rospy-message-converter pythonPackages.pandas roslib pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
