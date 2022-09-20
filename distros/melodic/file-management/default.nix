
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, dataflow-lite, gtest }:
buildRosPackage {
  pname = "ros-melodic-file-management";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/file_management/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "ba98a28f68f31e1a51a1fb3de6afc22b8797f88ddeb0416a1d85fdbbc863e51d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
