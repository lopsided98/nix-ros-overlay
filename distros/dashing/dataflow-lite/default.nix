
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-dataflow-lite";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/dataflow_lite/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "3cffbe0f1f840f9f668005c42ef993ff73c9c2abe225a34310a23a9c4ebb50a2";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
