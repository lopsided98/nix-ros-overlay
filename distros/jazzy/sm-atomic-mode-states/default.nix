
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic-mode-states";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic_mode_states/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "efe106f14bbb81d520ccd6098a92fe13cd3fd304af8a0e671041ea721b95a575";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic_mode_states package";
    license = with lib.licenses; [ asl20 ];
  };
}
