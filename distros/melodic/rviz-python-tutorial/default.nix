
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-python-tutorial";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/rviz_python_tutorial/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "e4cc2466079f2b9ead23a1584a2c2fc808b106d7aa49fcc3c2e0c3520aae2599";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
