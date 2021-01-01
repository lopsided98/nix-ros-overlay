
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-mbf-utility";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_utility/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "4da70922f5a1921c29b2a555e827338eb0aa49f2363d2ac1bd8031beba61c1bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
