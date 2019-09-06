
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, gtest, catkin, zlib, curl, openssl, cmake, utillinux, gmock }:
buildRosPackage {
  pname = "ros-melodic-aws-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/melodic/aws_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "eac5a55756b1eb20e37a7b38217345fdae6b4fa24c142e983c177a35f3d3b557";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment curl openssl utillinux zlib ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ openssl utillinux curl zlib ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
