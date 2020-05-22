
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "980937ac94cf9420aeb402903426dd795515384dffbf21dd704dd7e781ec5bea";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rostest ];
  propagatedBuildInputs = [ nodelet rosbash roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple script to write simple launch files
    that can easily switch between running nodelets together or as
    standalone nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
