
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-http, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic-http";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic_http/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "bb7a692141a6c7448f4574e17960d91a74e56c1ca382b28e4e122b05352907b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-http cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic_http package";
    license = with lib.licenses; [ asl20 ];
  };
}
