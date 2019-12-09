
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-plugin-tutorials, visualization-marker-tutorials, catkin, interactive-marker-tutorials, librviz-tutorial, rviz-python-tutorial }:
buildRosPackage {
  pname = "ros-melodic-visualization-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/visualization_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "5f67b564a5f87b4d7113b97de74e987a956d3985dac7639204b4ba697a056007";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz-plugin-tutorials visualization-marker-tutorials interactive-marker-tutorials librviz-tutorial rviz-python-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage referencing tutorials related to rviz and visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
