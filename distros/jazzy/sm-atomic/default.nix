
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "582b98cc24820fc4cbdd2526bcfff4ff85dc7fb92df4ae8a075eeb6ae11cc420";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic package";
    license = with lib.licenses; [ asl20 ];
  };
}
