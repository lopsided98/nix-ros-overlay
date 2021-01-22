
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq }:
buildRosPackage {
  pname = "ros-dashing-behaviortree-cpp";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/dashing/behaviortree_cpp/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "efed4ba3082011bfb1cdbb6d71b8475f8c9ed7d6302e087ac7b13cb253d08f20";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    license = with lib.licenses; [ mit ];
  };
}
