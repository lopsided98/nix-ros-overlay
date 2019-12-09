
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, catkin, tf2, tf2-geometry-msgs, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-mbf-utility";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_utility/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "959d2bdcfd96d1bef6d6a2e4df17ad48f22df57ee2400949c7c867900f8175d6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs tf tf2 tf2-geometry-msgs roscpp tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs tf roscpp tf2-geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
