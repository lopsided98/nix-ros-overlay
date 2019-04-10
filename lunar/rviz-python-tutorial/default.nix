
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-lunar-rviz-python-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/rviz_python_tutorial/0.10.3-0.tar.gz;
    sha256 = "ec9596329dfe716c2e614e0bcf411db8bdad15abfa96877303db959f962e7043";
  };

  buildInputs = [ rviz ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    #license = lib.licenses.BSD;
  };
}
