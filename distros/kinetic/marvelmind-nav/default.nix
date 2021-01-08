
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marvelmind-nav";
  version = "1.0.8";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_nav-release/archive/release/kinetic/marvelmind_nav/1.0.8-0.tar.gz";
    name = "1.0.8-0.tar.gz";
    sha256 = "e240a1e09279eb6adf769c81c4b8b580ba47209034e909aca808b5c54a3805f8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Marvelmind local navigation system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
