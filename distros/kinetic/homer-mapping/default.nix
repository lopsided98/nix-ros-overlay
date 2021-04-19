
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, nav-msgs, qt5, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapping";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_mapping-release/-/archive/release/kinetic/homer_mapping/0.1.53-0/homer_mapping-release-release-kinetic-homer_mapping-0.1.53-0.tar.gz";
    name = "homer_mapping-release-release-kinetic-homer_mapping-0.1.53-0.tar.gz";
    sha256 = "b2b9f3fcc049e042504ce6c0fe69ee61bab985ee3239afa853fc684f5ea01185";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen homer-mapnav-msgs homer-nav-libs nav-msgs qt5.qtbase roscpp roslib sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''homer_mapping'';
    license = with lib.licenses; [ gpl3 ];
  };
}
