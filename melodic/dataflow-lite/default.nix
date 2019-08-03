
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-dataflow-lite";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/dataflow_lite/1.1.0-1.tar.gz;
    sha256 = "db8584ba8c3ad6e409b866429a766cce5a3669849e8243e2edbf451913c7f55f";
  };

  buildInputs = [ aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
