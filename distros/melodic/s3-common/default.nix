
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-s3-common";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/s3_common/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "660dfd0718cfc11abc19f8d61c046f14c85e2c0e6670af3244b8f8776004a9e9";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common utilities for interacting with AWS S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
