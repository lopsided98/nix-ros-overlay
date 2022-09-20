
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-key-teleop";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/key_teleop/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "798313243d19edcf979363cd0a1d3e28d4a4a93393ece7c5148924021adb067e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A text-based interface to send a robot movement commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
