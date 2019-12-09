
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, geometry-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-key-teleop";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/key_teleop/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "06f164a11e5deeab452048a9d404d302ac6b82f351df562da48abaf604019286";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A text-based interface to send a robot movement commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
