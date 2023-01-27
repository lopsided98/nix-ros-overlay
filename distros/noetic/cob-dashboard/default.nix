
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, python3Packages, roslib, rospy, rqt-gui, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-noetic-cob-dashboard";
  version = "0.6.31-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_dashboard/0.6.31-1.tar.gz";
    name = "0.6.31-1.tar.gz";
    sha256 = "f35015620375692c55e3ef775986e20bfc79b2ca34b9c8a02d24fdc7a407d52f";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs roslib rospy rqt-gui rqt-robot-dashboard ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
