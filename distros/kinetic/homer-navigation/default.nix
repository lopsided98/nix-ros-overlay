
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, homer-ptu-msgs, homer-robbie-architecture, homer-tts, nav-msgs, roscpp, roslib, sensor-msgs, std-msgs, tf, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-navigation";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_navigation-release/-/archive/release/kinetic/homer_navigation/0.1.53-0/homer_navigation-release-release-kinetic-homer_navigation-0.1.53-0.tar.gz";
    name = "homer_navigation-release-release-kinetic-homer_navigation-0.1.53-0.tar.gz";
    sha256 = "8ede179b298b747fddb5c68cab7dfc133a32bcb59513290d62242fbfe17ad457";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ actionlib eigen homer-mapnav-msgs homer-nav-libs homer-ptu-msgs homer-robbie-architecture homer-tts nav-msgs roscpp roslib sensor-msgs std-msgs tf trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_navigation package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
