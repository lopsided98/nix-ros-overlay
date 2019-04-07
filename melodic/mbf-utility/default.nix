
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-utility";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_utility/0.2.3-0.tar.gz;
    sha256 = "7bd062652a4d93996bf5c705a3a02bf2506313a2c99993d0efd89210bd7fd5bf";
  };

  buildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs tf roscpp ];
  propagatedBuildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    #license = lib.licenses.BSD;
  };
}
