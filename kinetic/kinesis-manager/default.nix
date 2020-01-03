
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, curl, gmock, gtest, log4cplus, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-manager";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_manager-release/archive/release/kinetic/kinesis_manager/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "9f6ff5a12fc8c9cef93175befcd74a12a6b9e034f17f0cd6d15f296f0ed176ad";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common boost curl log4cplus openssl ];
  nativeBuildInputs = [ catkin cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
