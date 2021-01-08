
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, nav-msgs, qt5, roscpp, roslib, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapping";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_mapping-release/repository/archive.tar.gz?ref=release/kinetic/homer_mapping/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "e654ffefc17fd17fb005adbe83c437c1c9e41c617d61971146ae1136014d9c2b";
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
