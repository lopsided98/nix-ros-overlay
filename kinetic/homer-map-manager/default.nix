
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, SDL, cmake-modules, SDL_image, libyamlcpp, tf, catkin, homer-mapnav-msgs, roslib, interactive-markers, eigen, roscpp, homer-nav-libs }:
buildRosPackage {
  pname = "ros-kinetic-homer-map-manager";
  version = "0.1.54";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_map_manager-release/repository/archive.tar.gz?ref=release/kinetic/homer_map_manager/0.1.54-0;
    sha256 = "27440ab6119c544c875eb802466e0a7155e68e2c5bd3892b14985c76cd9423b9";
  };

  buildInputs = [ std-srvs SDL cmake-modules SDL_image libyamlcpp tf homer-mapnav-msgs roslib interactive-markers eigen roscpp homer-nav-libs ];
  propagatedBuildInputs = [ std-srvs SDL SDL_image libyamlcpp tf homer-mapnav-msgs roslib interactive-markers eigen roscpp homer-nav-libs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_manager'';
    license = with lib.licenses; [ gpl3 ];
  };
}
