
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-interface";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_interface/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "929274b33e59f3edcaea7d83b1fb9344a78e093a7c2a7c968914d79575867894";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
