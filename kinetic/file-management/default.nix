
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataflow-lite, gtest, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-file-management";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/file_management/1.1.0-2.tar.gz;
    sha256 = "3d2bdce675161c5b71624ae756cb830f1cd52d544fdffcf38909d5f77892a95b";
  };

  buildInputs = [ dataflow-lite aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
