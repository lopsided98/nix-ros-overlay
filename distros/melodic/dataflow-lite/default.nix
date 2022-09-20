
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-dataflow-lite";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/dataflow_lite/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "6bd3d571380bb06623afd09ae46e1a0d95368ccafe14416a323fd79ac84e2bed";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Light version of dataflow libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
