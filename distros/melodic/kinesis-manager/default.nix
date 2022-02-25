
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, curl, gtest, log4cplus, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-kinesis-manager";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_manager-release/archive/release/melodic/kinesis_manager/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "6f22911e08025ecc3b5f01cb5ae4fe7acd7c9ae49a7470299cb72892ca8b9b08";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost curl log4cplus openssl ];
  nativeBuildInputs = [ catkin cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
