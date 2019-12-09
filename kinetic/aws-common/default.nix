
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, utillinux, catkin, cmake, openssl, zlib, gtest, gmock, ros-environment, curl }:
buildRosPackage {
  pname = "ros-kinetic-aws-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/kinetic/aws_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "95f363f028c2b15f7984ea22111aee79c8272050933bc8f1b504d4eed60c2009";
  };

  buildType = "cmake";
  buildInputs = [ utillinux openssl zlib ros-environment curl ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ utillinux openssl curl zlib ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
