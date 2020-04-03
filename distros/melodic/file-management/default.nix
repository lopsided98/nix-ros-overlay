
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, dataflow-lite, gmock, gtest }:
buildRosPackage {
  pname = "ros-melodic-file-management";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/file_management/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "1077f5c11c901a41e166e2bd718a220b04d98c2abc6ea085da2ef9c54f2c68df";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
