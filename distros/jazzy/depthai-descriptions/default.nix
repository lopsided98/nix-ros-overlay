
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-descriptions";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_descriptions/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "fb10fe1e37254e2f2fe074e39aa0bd3714478eaaf557ee4fee84be19245e3025";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
