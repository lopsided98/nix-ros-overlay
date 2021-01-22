
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-recorder-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/recorder_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d37e2a64c67dd758e32ba0e5499894e4120c78557748ecc6f3526d1f379d25d7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and actions for rosbag recorders.'';
    license = with lib.licenses; [ asl20 ];
  };
}
