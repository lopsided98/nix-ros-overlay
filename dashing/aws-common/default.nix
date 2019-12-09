
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, utillinux, cmake, openssl, zlib, ament-cmake-gmock, ros-environment, curl, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-aws-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/dashing/aws_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ea08a28f13ac3dd0aab080d68757d4b3c45232a1c210a547356271097224fd1f";
  };

  buildType = "cmake";
  buildInputs = [ utillinux openssl zlib ros-environment curl ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ utillinux openssl curl zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
