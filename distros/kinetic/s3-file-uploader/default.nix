
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gmock, gtest, roscpp, rostest, s3-common }:
buildRosPackage {
  pname = "ros-kinetic-s3-file-uploader";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/s3_file_uploader/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3594e8d5cb27677a64b8ea23c38f5fd6f9da9c78fa4cf800342beaf4c03546a3";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs aws-common aws-ros1-common boost file-uploader-msgs roscpp s3-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with a node that facilitates the uploading of files to Amazon S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
