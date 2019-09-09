
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, ament-cmake-gmock, ament-cmake-gtest, curl, openssl, cmake, utillinux, zlib }:
buildRosPackage {
  pname = "ros-dashing-aws-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/dashing/aws_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ea08a28f13ac3dd0aab080d68757d4b3c45232a1c210a547356271097224fd1f";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment curl openssl utillinux zlib ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ openssl utillinux curl zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
