
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-dataflow-lite";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/dataflow_lite/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "73748fc97027f95437fee9118357f2875670f516c06aee31060fc5fab7aa9f22";
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
