
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-branching";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_branching/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "a560dd994d8103f4814d0558e833dd92b0828da904eec4833da2058d98bdba07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_branching package";
    license = with lib.licenses; [ asl20 ];
  };
}
