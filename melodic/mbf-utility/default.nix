
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-utility";
  version = "0.2.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_utility/0.2.4-1.tar.gz;
    sha256 = "3c06c357bd9229ab1ff2ad139be81d98f93b2e0cd9e054d579a0ace7dbcd34bf";
  };

  buildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
