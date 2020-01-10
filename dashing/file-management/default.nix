
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake, dataflow-lite }:
buildRosPackage {
  pname = "ros-dashing-file-management";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/file_management/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "246be5b507c788ba825c691da1771ab4c2659a84e9a3153b6f9a0f1d441237e2";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
