
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, curl, gtest, log4cplus, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-kinesis-manager";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_manager-release/archive/release/melodic/kinesis_manager/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "6db7c90ac6fb345ff10ec737c2f37f5cc6a0f6a6aebf038c852375afd2fb40e2";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake pkg-config ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost curl log4cplus openssl ];
  nativeBuildInputs = [ catkin cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
