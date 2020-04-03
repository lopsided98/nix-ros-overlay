
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-dataflow-lite";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/dataflow_lite/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "5a8ac08083f7b11b4f1d3623f9a3f1b60e131e6420fe4ac55b5c478be345aae8";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
