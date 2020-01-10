
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/neonavigation_rviz_plugins/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "cbad2827ba6b53772b63bc4121bbe599aadb76c08d05db5cfcc9cfad20fa2595";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
