
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-rviz-python-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/rviz_python_tutorial/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "30bab9adabf6c5f06ce36eae6cbd2941fbda56fd51675330ced07110d9dee064";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
