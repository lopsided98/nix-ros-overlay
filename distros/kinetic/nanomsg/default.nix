
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-nanomsg";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/nanomsg-release/archive/release/kinetic/nanomsg/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "a9db2f46e13370fe37607c5391fbda271ff5c3fffaa5d4968fc11dab15029f80";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nanomsg package'';
    license = with lib.licenses; [ mit ];
  };
}
