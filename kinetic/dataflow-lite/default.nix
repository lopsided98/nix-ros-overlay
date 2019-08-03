
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-dataflow-lite";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/dataflow_lite/1.1.0-2.tar.gz;
    sha256 = "21e71ccbb81af1845cc9253dacf19d6e935905348efebaa96e94c746c0be03b8";
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
