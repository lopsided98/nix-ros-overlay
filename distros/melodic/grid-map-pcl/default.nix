
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-msgs, grid-map-ros, gtest, libyamlcpp, pcl, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-grid-map-pcl";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_pcl/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "face4f96f1471f2f3abc855af51faacbfaeece155011a92170c1b3591f907eea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros libyamlcpp pcl pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
