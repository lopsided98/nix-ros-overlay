
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sdc21x0";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/sdc21x0/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "dd101ef9cfa4334695bb16dd98b092d0feeade99931a5988244a785ee210fe92";
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
