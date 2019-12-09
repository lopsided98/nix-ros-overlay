
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, log4cplus, boost, gmock, catkin, cmake, openssl, gtest, pkg-config, aws-common, curl }:
buildRosPackage {
  pname = "ros-melodic-kinesis-manager";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_manager-release/archive/release/melodic/kinesis_manager/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "72f3249e68e58cec6b9adcb8d66d73f2effa3386bfef0a41c8734a8041a3d057";
  };

  buildType = "cmake";
  buildInputs = [ log4cplus boost openssl aws-common curl ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ log4cplus boost openssl aws-common curl ];
  nativeBuildInputs = [ pkg-config catkin cmake ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
