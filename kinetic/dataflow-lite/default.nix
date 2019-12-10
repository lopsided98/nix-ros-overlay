
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-dataflow-lite";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/dataflow_lite/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c1d35faa289f8c795f0304d70b0f40763320cd8703e1ab882148dfaccaa37cb7";
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
