
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, moveit-commander, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-interface";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_interface/0.7.1-0.tar.gz;
    sha256 = "547650c8b982b8beeefa772f2a2ee769826e98caf90df702c79d722d657bd0b0";
  };

  propagatedBuildInputs = [ cob-script-server moveit-commander rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
