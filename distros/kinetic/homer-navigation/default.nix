
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, homer-ptu-msgs, homer-robbie-architecture, homer-tts, nav-msgs, roscpp, roslib, sensor-msgs, std-msgs, tf, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-navigation";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_navigation-release/repository/archive.tar.gz?ref=release/kinetic/homer_navigation/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "9ef7d2074a73e51a04324c7bb58c2f5eb0ec9e8c2bd6ed3938e039f66895c7b1";
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
