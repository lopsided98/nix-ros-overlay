
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataflow-lite, gtest, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-file-management";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/file_management/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "54c6fde6a25317d13e8354d3e62658771cfe7e51cf9e151f8a127f171bd3447e";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
