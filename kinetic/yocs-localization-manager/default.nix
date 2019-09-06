
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, ar-track-alvar, catkin, yocs-msgs, ar-track-alvar-msgs, rospy, actionlib, std-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-localization-manager";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_localization_manager/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "c262b6ec1437a06ceac24673d35bf2633f4639e92591d57049bc205b404bb31a";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ ar-track-alvar yocs-msgs ar-track-alvar-msgs actionlib rospy std-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization Manager helps to localize robot's position with annotated information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
