
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, liblapack, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-pincher-arm-ikfast-plugin";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/melodic/pincher_arm_ikfast_plugin/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "935742ac590504e21f75c1bebd03f380e2d33b5e62ae395b0122718b3fb283aa";
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
