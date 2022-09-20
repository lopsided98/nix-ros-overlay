
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-sdc21x0";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/sdc21x0/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "ba36cc5570fc9c1e86170c6d6b25c913ff595d792d65b709ea6458be53554c94";
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
