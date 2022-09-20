
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-marvelmind-nav";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_nav-release/archive/release/melodic/marvelmind_nav/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "abc7758576fda1b1cf6f3b49d084bd6f9c9e8333f4e622bd3683fa4fa0e843db";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Marvelmind local navigation system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
