
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, openssl, gtest, catkin, curl, zlib, cmake, utillinux, gmock }:
buildRosPackage {
  pname = "ros-melodic-aws-common";
  version = "2.0.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/aws_common-release/archive/release/melodic/aws_common/2.0.0-2.tar.gz;
    sha256 = "fd9f9814aef06e687d94c1158f8f401e035005b187e8e22321567cf5db602dcd";
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
