
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppzmq, ament-cmake-gtest, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-behaviortree-cpp-v3";
  version = "3.0.9-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/dashing/behaviortree_cpp_v3/3.0.9-1.tar.gz";
    name = "3.0.9-1.tar.gz";
    sha256 = "37949b11be8ce0a62a31ef24c3f5889cd02525bab64638fc9617f369c38c9141";
  };

  buildType = "ament_cmake";
  buildInputs = [ cppzmq ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
