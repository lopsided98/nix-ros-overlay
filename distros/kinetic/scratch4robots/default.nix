
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-scratch4robots";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/JdeRobot/Scratch4Robots-release/archive/release/kinetic/scratch4robots/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "06885d6419dad80bc40830296bcb3e6370c48c49256efe8683e60efb62991ec5";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''scratch4robots'';
    license = with lib.licenses; [ gpl3 ];
  };
}
