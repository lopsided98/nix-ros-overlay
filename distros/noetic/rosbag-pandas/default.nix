
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosbag, roslib, rospy-message-converter }:
buildRosPackage {
  pname = "ros-noetic-rosbag-pandas";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/eurogroep/rosbag_pandas-release/archive/release/noetic/rosbag_pandas/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "d68713817eda408309b0b65a71e30a536e6f887cb75efe98d8427caa16f9ba6e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.matplotlib python3Packages.numpy python3Packages.pandas rosbag roslib rospy-message-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
