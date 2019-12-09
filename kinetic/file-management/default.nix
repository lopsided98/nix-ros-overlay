
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, gmock, dataflow-lite, aws-common }:
buildRosPackage {
  pname = "ros-kinetic-file-management";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/file_management/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "2f20f7bf35dbc68ad55d8f032d2c23d2691ff7bc0e0d55e13d41d89b2e0115b4";
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
