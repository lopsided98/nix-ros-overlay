
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake, cppzmq }:
buildRosPackage {
  pname = "ros-crystal-behaviortree-cpp";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/crystal/behaviortree_cpp/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "119e8a57c251ae3979a0481b693f062941796764ee047eb40eff98789183a9aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ cppzmq ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    license = with lib.licenses; [ mit ];
  };
}
