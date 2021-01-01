
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-s3-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/s3_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "64f1485937c9bd2a9fb0d603911a7ae44161cd48d0e74a12a8ccf0065de7f8c9";
  };

  buildType = "cmake";
  checkInputs = [ gmock ];
  propagatedBuildInputs = [ aws-common boost ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common utilities for interacting with AWS S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
