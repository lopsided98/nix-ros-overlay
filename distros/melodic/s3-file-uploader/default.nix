
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gtest, roscpp, rostest, s3-common }:
buildRosPackage {
  pname = "ros-melodic-s3-file-uploader";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/s3_file_uploader/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c0dcc4dbd3ec1ee24590acc7b770caef82b6b4a4434517b277754f5738d6836a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs aws-common aws-ros1-common boost file-uploader-msgs roscpp s3-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with a node that facilitates the uploading of files to Amazon S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
