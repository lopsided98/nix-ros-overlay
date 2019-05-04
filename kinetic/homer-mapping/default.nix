
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, sensor-msgs, catkin, homer-mapnav-msgs, roslib, nav-msgs, qt5, eigen, std-msgs, roscpp, homer-nav-libs }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapping";
  version = "0.1.53";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_mapping-release/repository/archive.tar.gz?ref=release/kinetic/homer_mapping/0.1.53-0;
    sha256 = "e654ffefc17fd17fb005adbe83c437c1c9e41c617d61971146ae1136014d9c2b";
  };

  buildInputs = [ cmake-modules tf sensor-msgs qt5.qtbase homer-mapnav-msgs roslib nav-msgs eigen roscpp homer-nav-libs ];
  propagatedBuildInputs = [ tf sensor-msgs qt5.qtbase homer-mapnav-msgs roslib nav-msgs eigen std-msgs roscpp homer-nav-libs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''homer_mapping'';
    license = with lib.licenses; [ gpl3 ];
  };
}
