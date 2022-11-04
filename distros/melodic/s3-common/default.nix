
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-s3-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/s3_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "020e7dcb88eb4b7c3efc63814fd190051ca4769345fc180807b576ee018e9bbb";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common utilities for interacting with AWS S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
