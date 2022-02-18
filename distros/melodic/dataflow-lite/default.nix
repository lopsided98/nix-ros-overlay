
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-dataflow-lite";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/dataflow_lite/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "48eee6c7e4843e4e73a2b800d5b59214e15bcfc87157012e79bca5ca968af806";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
