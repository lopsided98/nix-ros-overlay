
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, liblapack, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-ikfast-plugin";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/pincher_arm_ikfast_plugin/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f1da57fc59c5f2a46ed6ead7598bd9aadb4a36d06249dba1a07d2237d72afe13";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen tf2-kdl ];
  propagatedBuildInputs = [ eigen-conversions liblapack moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IKFast plugin for the PhantomX Pincher arm'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
