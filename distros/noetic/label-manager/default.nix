
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, mesh-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-label-manager";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/label_manager/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6858c277c528ea94ab7bc1efcd561ff4d9c94680761650220078d4e2f6affd9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs genmsg mesh-msgs message-generation message-runtime roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serving and persisting label information'';
    license = with lib.licenses; [ bsd3 ];
  };
}
