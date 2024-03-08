
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-ruckig";
  version = "0.9.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/rolling/ruckig/0.9.2-4.tar.gz";
    name = "0.9.2-4.tar.gz";
    sha256 = "c453c4bf7b3b749956c6874b5efdac9931980e87bdd08692d057c9a1209bf38f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
