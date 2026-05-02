
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-ruckig";
  version = "0.9.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/rolling/ruckig/0.9.2-5.tar.gz";
    name = "0.9.2-5.tar.gz";
    sha256 = "442531139807d7dfbf399240f8a5b81f2b47dbd79bd929b5f32fe1edbb1c195b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Instantaneous Motion Generation for Robots and Machines.";
    license = with lib.licenses; [ mit ];
  };
}
