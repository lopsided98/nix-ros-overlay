
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "0d4661c6769cffc6762ce9c24cdfe0b9e96f7d03ed5f9448362a96e97e074ec2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
