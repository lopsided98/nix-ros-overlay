
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, elfutils }:
buildRosPackage {
  pname = "ros-crystal-behaviortree-cpp-v3";
  version = "3.0.4";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/crystal/behaviortree_cpp_v3/3.0.4-0.tar.gz";
    name = "3.0.4-0.tar.gz";
    sha256 = "b2807d1238adbba82ece6d5045a0335bd3c461e7c38ec96cdc6e369b2be8e990";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cppzmq elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
