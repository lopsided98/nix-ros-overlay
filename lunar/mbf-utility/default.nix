
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mbf-utility";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/mbf_utility/0.2.3-0.tar.gz;
    sha256 = "e7722042b0250e1a9fe0834c1cd996ecb24a047618b0888f2f1f4dd40d2cdbc5";
  };

  buildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs tf roscpp ];
  propagatedBuildInputs = [ tf2 tf2-ros tf2-geometry-msgs geometry-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    #license = lib.licenses.BSD;
  };
}
