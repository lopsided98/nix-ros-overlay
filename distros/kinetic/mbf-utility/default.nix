
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-mbf-utility";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_utility/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "81c366c20496f1e1cbb670403bd72cea40be18ee065666ff65bb671a5db8ad66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
