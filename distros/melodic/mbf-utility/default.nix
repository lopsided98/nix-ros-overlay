
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mbf-utility";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_utility/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "dea46e27479efeab347376c097252b8b0cecd8d5fe8b46fa594219b927135602";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp tf tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
