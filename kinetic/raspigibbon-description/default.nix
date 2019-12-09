
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, xacro, urdf, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-description";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/raspigibbon_description/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "d0423d8dee8204b58b4f489be31397afe876f6d197381f413fa76c2ef2b2b181";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs xacro urdf std-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs xacro urdf std-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_description package'';
    license = with lib.licenses; [ mit ];
  };
}
