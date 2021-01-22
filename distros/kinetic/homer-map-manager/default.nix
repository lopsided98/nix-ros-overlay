
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, interactive-markers, libyamlcpp, roscpp, roslib, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-map-manager";
  version = "0.1.54";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_map_manager-release/repository/archive.tar.gz?ref=release/kinetic/homer_map_manager/0.1.54-0";
    name = "archive.tar.gz";
    sha256 = "27440ab6119c544c875eb802466e0a7155e68e2c5bd3892b14985c76cd9423b9";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ SDL SDL_image eigen homer-mapnav-msgs homer-nav-libs interactive-markers libyamlcpp roscpp roslib std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_manager'';
    license = with lib.licenses; [ gpl3 ];
  };
}
