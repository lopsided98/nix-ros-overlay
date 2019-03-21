
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-utility";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_utility/0.2.3-0.tar.gz;
    sha256 = "a9ae6714f45d7a352651752f210c5bddd1d85a7ba63572e7b042b2a71c71044e";
  };

  propagatedBuildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs tf roscpp ];
  nativeBuildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs catkin tf roscpp ];

  meta = {
    description = ''The mbf_utility package'';
    #license = lib.licenses.BSD;
  };
}
