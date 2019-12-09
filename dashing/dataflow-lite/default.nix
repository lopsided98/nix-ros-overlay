
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, aws-common, ament-cmake-gtest, cmake }:
buildRosPackage {
  pname = "ros-dashing-dataflow-lite";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/dataflow_lite/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "3b8be01f3b1b075c22c70ab6de3fbfc0ae8aa776c286eda4f426b94cad0f95a2";
  };

  buildType = "cmake";
  buildInputs = [ aws-common ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
