
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-graceful-controller";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/melodic/graceful_controller/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "cbe4f3daeb5be8bc16d6a1b5910070b0067fa654ec9341717e64309f8ad6662c";
  };

  buildType = "catkin";
  buildInputs = [ angles ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
