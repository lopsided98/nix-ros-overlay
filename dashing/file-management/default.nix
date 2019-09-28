
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, dataflow-lite, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-file-management";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/file_management/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "02198a10c6e9c0641eebd32e5c4c99800f70549b4e1e3814cf77a9d46b068209";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
