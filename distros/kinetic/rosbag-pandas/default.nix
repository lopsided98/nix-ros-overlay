
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbag, roslib, rospy-message-converter }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-pandas";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/eurogroep/rosbag_pandas-release/archive/release/kinetic/rosbag_pandas/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "ccb91d27be7b9e22b42ac6c14bdbc83aad6949ba7030144cb04183a957cbc9a9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pandas rosbag roslib rospy-message-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
