
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, openssl, gtest, catkin, curl, zlib, cmake, utillinux, gmock }:
buildRosPackage {
  pname = "ros-kinetic-aws-common";
  version = "2.0.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/aws_common-release/archive/release/kinetic/aws_common/2.0.0-2.tar.gz;
    sha256 = "0a6d5fa86e9d7e08a39951616be52bcdf2ac6776f6c1267e8131a67430dce658";
  };

  buildInputs = [ ros-environment catkin curl openssl utillinux zlib ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ zlib openssl utillinux curl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
