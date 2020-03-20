
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, diagnostic-msgs, image-transport, pkg-config, python3Packages, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jderobot-camviz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/CamViz-release/archive/release/melodic/jderobot_camviz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ccd4116e49d5abb982a9ccc79b6aca866891d6b56475b966416f1a1792ad918f";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  checkInputs = [ diagnostic-msgs ];
  propagatedBuildInputs = [ cv-bridge image-transport python3Packages.pyyaml roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ python3Packages.catkin-pkg ];

  meta = {
    description = ''camViz package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
