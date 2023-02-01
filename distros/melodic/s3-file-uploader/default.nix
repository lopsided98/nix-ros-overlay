
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gtest, roscpp, rostest, s3-common }:
buildRosPackage {
  pname = "ros-melodic-s3-file-uploader";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "rosbag_uploader-release";
        rev = "release/melodic/s3_file_uploader/1.0.1-1";
        sha256 = "sha256-iztGqlNyI8jbUNEEgyBo/wlaiAvV/aRTwgL5oSyzBWc=";
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
