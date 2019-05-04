
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, homer-ptu-msgs, cmake-modules, trajectory-msgs, sensor-msgs, catkin, roscpp, homer-mapnav-msgs, roslib, nav-msgs, homer-robbie-architecture, actionlib, std-msgs, homer-tts, tf, homer-nav-libs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-homer-navigation";
  version = "0.1.53";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_navigation-release/repository/archive.tar.gz?ref=release/kinetic/homer_navigation/0.1.53-0;
    sha256 = "9ef7d2074a73e51a04324c7bb58c2f5eb0ec9e8c2bd6ed3938e039f66895c7b1";
  };

  buildInputs = [ cmake-modules homer-ptu-msgs trajectory-msgs sensor-msgs roscpp homer-mapnav-msgs roslib nav-msgs homer-robbie-architecture actionlib std-msgs homer-tts tf homer-nav-libs eigen ];
  propagatedBuildInputs = [ homer-ptu-msgs trajectory-msgs sensor-msgs roscpp homer-mapnav-msgs roslib nav-msgs homer-robbie-architecture actionlib std-msgs homer-tts tf homer-nav-libs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_navigation package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
