
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, assimp, urdf, resource-retriever, filters, tf, catkin, visualization-msgs, roscpp, bullet }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-self-filter";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_self_filter/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "fa7dddab1eb837577b59dbbca219f5dec1815a69fb26456830837bfe60d182c5";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs assimp urdf resource-retriever filters tf visualization-msgs roscpp bullet ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs assimp urdf resource-retriever tf filters visualization-msgs roscpp bullet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
