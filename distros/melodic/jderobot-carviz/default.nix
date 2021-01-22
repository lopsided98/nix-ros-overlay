
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, pkg-config, python3Packages, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jderobot-carviz";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/carViz-release/archive/release/melodic/jderobot_carviz/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "c1f1e372695ce56a49411a7201deca9be171b704ce55f67f62a60344ae0fd3a4";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ cv-bridge image-transport python3Packages.pyyaml roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''carViz package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
