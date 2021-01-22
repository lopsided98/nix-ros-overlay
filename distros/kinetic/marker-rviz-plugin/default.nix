
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marker-msgs, roscpp, rviz }:
buildRosPackage {
  pname = "ros-kinetic-marker-rviz-plugin";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/marker_rviz_plugin-release/archive/release/kinetic/marker_rviz_plugin/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "bc621e2650d55f3082e262b8c305d1343d89984f89a7b1afd26ae2d236b23703";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ marker-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The marker_rviz_plugin package contains RViz plugins to visualize messages of the marker_msgs package using RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
