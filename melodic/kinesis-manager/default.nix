
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, log4cplus, pkg-config, aws-common, curl, openssl, cmake }:
buildRosPackage {
  pname = "ros-melodic-kinesis-manager";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_manager-release/archive/release/melodic/kinesis_manager/2.0.0-0.tar.gz;
    sha256 = "455faeba33ec5a7f671ac3311e0afb2a4a6081da7a36cf5fdddbd83704b95b39";
  };

  buildInputs = [ boost log4cplus aws-common curl openssl ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost log4cplus aws-common curl openssl ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
