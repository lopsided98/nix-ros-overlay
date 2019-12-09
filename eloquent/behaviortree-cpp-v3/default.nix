
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake, cppzmq }:
buildRosPackage {
  pname = "ros-eloquent-behaviortree-cpp-v3";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/eloquent/behaviortree_cpp_v3/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "b49d34d31c78a071ca48fc13ee2a0b07ec17956c55a5bf4cafd693b5306bcf7c";
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
