
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-description";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/raspigibbon_description/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "d0423d8dee8204b58b4f489be31397afe876f6d197381f413fa76c2ef2b2b181";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy sensor-msgs std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_description package'';
    license = with lib.licenses; [ mit ];
  };
}
