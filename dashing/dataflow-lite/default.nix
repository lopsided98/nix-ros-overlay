
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, ament-cmake-gtest, cmake, ament-cmake-gmock }:
buildRosPackage {
  pname = "ros-dashing-dataflow-lite";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/dataflow_lite/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ba9f027bf0fd839fb23d9f196c935912552a6c179973275003129b44702a6866";
  };

  buildType = "cmake";
  buildInputs = [ aws-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
