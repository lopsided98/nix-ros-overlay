
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, catkin, cmake-modules, eigen, homer-mapnav-msgs, homer-nav-libs, interactive-markers, libyamlcpp, roscpp, roslib, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-homer-map-manager";
  version = "0.1.54";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_map_manager-release/-/archive/release/kinetic/homer_map_manager/0.1.54-0/homer_map_manager-release-release-kinetic-homer_map_manager-0.1.54-0.tar.gz";
    name = "homer_map_manager-release-release-kinetic-homer_map_manager-0.1.54-0.tar.gz";
    sha256 = "d29b4fd5a2ef833014bfe9b4ef884206840602e330df0715c53560574b03f27a";
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
