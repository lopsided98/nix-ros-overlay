
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sdc21x0";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/sdc21x0/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "f2629c01db8c21d53488fb1d70af1f1a4c8bb83080e75af908141f780c7a80ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the sdc21x0 motor controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
