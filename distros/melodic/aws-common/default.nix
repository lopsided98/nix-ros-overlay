
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, gtest, openssl, ros-environment, util-linux, zlib }:
buildRosPackage {
  pname = "ros-melodic-aws-common";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/melodic/aws_common/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "d432e283db309fa929373f84ea3aa48ce7919caa608ebc5b033b0b55336e8d19";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl openssl util-linux zlib ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
