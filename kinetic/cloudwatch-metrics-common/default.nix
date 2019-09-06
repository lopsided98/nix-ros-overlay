
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, dataflow-lite, gtest, catkin, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-common";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_metrics_common/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "7ba172fe97ae9053468f225ec0ecabedae55b5287f8434888a85fb8fb5b2a89a";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
