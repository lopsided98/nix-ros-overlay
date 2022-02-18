
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-recorder-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/recorder_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3065e9f7c51beeff9d0e8d10c1cc7b8d3968086a85228cd715c7e29f7cd19503";
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
