
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-file-uploader-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/file_uploader_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b6536863c3c52d68d347fbf8781f402172a0ddb9919e503460e5db38e26d7a7e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and actions for S3 file uploader.'';
    license = with lib.licenses; [ asl20 ];
  };
}
