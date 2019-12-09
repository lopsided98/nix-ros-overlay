
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, log4cplus, boost, cmake, openssl, ament-cmake-gmock, pkg-config, aws-common, curl, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-kinesis-manager";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_manager-release/archive/release/dashing/kinesis_manager/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b11cdfb73d1bccbfe9eec3bb88192023c32d38e4da417b974bd9cb65564c753e";
  };

  buildType = "cmake";
  buildInputs = [ log4cplus boost openssl aws-common curl ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ log4cplus boost openssl aws-common curl ];
  nativeBuildInputs = [ pkg-config cmake ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
