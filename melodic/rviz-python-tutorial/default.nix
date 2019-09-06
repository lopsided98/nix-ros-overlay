
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-python-tutorial";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/rviz_python_tutorial/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "525f02f83695fda430a40dbb0d980db92744f6782726cc14c1ee731215f6137f";
  };

  buildType = "catkin";
  buildInputs = [ rviz ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to call into rviz internals from python scripts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
