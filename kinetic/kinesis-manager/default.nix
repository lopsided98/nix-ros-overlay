
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, log4cplus, pkg-config, aws-common, curl, openssl, cmake }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-manager";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_manager-release/archive/release/kinetic/kinesis_manager/2.0.0-0.tar.gz;
    sha256 = "83f5925eecaa5a5a2de023890b1cdbf6aded9482eeeaf8a29056255924a46293";
  };

  buildInputs = [ aws-common boost curl openssl log4cplus ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost curl openssl log4cplus ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    #license = lib.licenses.Apache 2.0;
  };
}
