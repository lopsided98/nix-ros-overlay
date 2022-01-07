
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sdc21x0";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/sdc21x0/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "7c7f8bf81d2689966dbe1dbaf4283e4a3fd3c0f04da95186af3b5db24cae7fe2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the sdc21x0 motor controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
