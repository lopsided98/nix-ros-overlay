
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, message-generation, message-runtime, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marvelmind-nav";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/MarvelmindRobotics/marvelmind_nav-release/archive/release/kinetic/marvelmind_nav/1.0.8-0.tar.gz;
    sha256 = "e240a1e09279eb6adf769c81c4b8b580ba47209034e909aca808b5c54a3805f8";
  };

  buildInputs = [ message-generation visualization-msgs rospy std-msgs roscpp ];
  propagatedBuildInputs = [ message-runtime visualization-msgs rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Marvelmind local navigation system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
