
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, bond-core, actionlib, catkin, ros-core, nodelet-core }:
buildRosPackage {
  pname = "ros-melodic-ros-base";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/ros_base/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "0b0cab7cb298a642bd33a0c4d7e17f10ac6533a1a59745a11e96c58d238f47eb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bond-core dynamic-reconfigure actionlib ros-core nodelet-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_core and includes other basic non-robot tools like actionlib, dynamic reconfigure, nodelets, and pluginlib.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
