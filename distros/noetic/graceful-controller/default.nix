
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-graceful-controller";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/noetic/graceful_controller/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "f32d7af9a5f1d8acaef59eec3f9ed9f2221fa8ae43f318c3769961c69bfa54a9";
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
