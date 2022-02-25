
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, dataflow-lite, gtest }:
buildRosPackage {
  pname = "ros-melodic-file-management";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/file_management/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "56eb2cea0667a774bc0205104fedbdd3f935968d941ec70a051d52ad7f3cd048";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
