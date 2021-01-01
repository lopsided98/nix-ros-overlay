
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, dataflow-lite, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-file-management";
  version = "1.1.5-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/file_management/1.1.5-2.tar.gz";
    name = "1.1.5-2.tar.gz";
    sha256 = "99aecb1dfc74753c75cf6157042eddc2718bf9e57c2fe53559260d1398863d64";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
