
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-rviz-plugins";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/neonavigation_rviz_plugins/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "efbd6174a16e29df8e466ced2540eec708abe8686309344b04114587a28de764";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
