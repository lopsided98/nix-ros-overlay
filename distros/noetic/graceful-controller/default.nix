
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-graceful-controller";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/noetic/graceful_controller/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "9f0f06b69c01869280baa500abd76571b46262153bc33089e28065f4ed2fb12c";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
