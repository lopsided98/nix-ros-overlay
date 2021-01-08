
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-multikey-teleop";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/easymov/multikey_teleop-release/archive/release/kinetic/multikey_teleop/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "801f6571875fe3632ecbefd9496194795f2e6e745824087e8a6fffd20f19c15b";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.xlib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multikey_teleop is a node for robot teleoperation.
      It uses keyboard to produce *Twist* messages.
      It's basically a keylogger, listening on any key press and producing commands accordingly.
      Its main advantage is that you will be able to simultaneously press multiple keys.
      Its main advantage is that you will be able to simultaneously press multiple keys.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
