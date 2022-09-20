
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-recorder-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/recorder_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f5a741c359bf9420a8bdb479bc65c235a72e3af4f510eb8a8f3716f832019246";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and actions for rosbag recorders.'';
    license = with lib.licenses; [ asl20 ];
  };
}
