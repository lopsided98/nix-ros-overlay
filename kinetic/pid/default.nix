
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pid";
  version = "0.0.27";

  src = fetchurl {
    url = https://github.com/AndyZe/pid-release/archive/release/kinetic/pid/0.0.27-0.tar.gz;
    sha256 = "f0f31bf9f2abca9d6ed2d6e96a9349b50e7a06fbf10c12e4d789657757e07435";
  };

  buildInputs = [ std-msgs message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    #license = lib.licenses.BSD;
  };
}
