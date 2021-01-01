
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-dataflow-lite";
  version = "1.1.5-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/dataflow_lite/1.1.5-2.tar.gz";
    name = "1.1.5-2.tar.gz";
    sha256 = "60d3b771ee23b01d4831555da90c52aa80362adae5f596a2d7c8c0eb8d6a6517";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
