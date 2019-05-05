
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-bond";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/lunar/bond/1.8.3-0.tar.gz;
    sha256 = "b61f2d9cbc9a877e6e10d2d227842d3f15648d9a3043421f4cac17a05f54aeb6";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing.  The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
