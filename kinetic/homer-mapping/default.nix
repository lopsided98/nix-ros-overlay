
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, homer-mapnav-msgs, std-msgs, tf, cmake-modules, roslib, homer-nav-libs, catkin, roscpp, eigen, qt5, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapping";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_mapping-release/repository/archive.tar.gz?ref=release/kinetic/homer_mapping/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "e654ffefc17fd17fb005adbe83c437c1c9e41c617d61971146ae1136014d9c2b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs homer-mapnav-msgs tf roslib cmake-modules qt5.qtbase homer-nav-libs eigen roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs homer-mapnav-msgs std-msgs tf roslib homer-nav-libs qt5.qtbase eigen roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''homer_mapping'';
    license = with lib.licenses; [ gpl3 ];
  };
}
