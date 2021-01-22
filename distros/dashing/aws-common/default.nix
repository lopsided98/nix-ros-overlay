
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, cmake, curl, openssl, ros-environment, utillinux, zlib }:
buildRosPackage {
  pname = "ros-dashing-aws-common";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/aws_common-release/archive/release/dashing/aws_common/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "51f68c1c9186a85cc0162af5c9f1211a164b711e1c950b5c46e3e24176d941bc";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ curl openssl utillinux zlib ];
  nativeBuildInputs = [ ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
