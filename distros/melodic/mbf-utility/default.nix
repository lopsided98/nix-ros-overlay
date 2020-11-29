
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mbf-utility";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_utility/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "99201d09d272fd06ea04b04f9a3f7413be3fae46497fd0c930f87d474ffe2f14";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
