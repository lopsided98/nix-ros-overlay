
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "5d69f5292ee12db22fb818ef29fb5575cc7a1cb99fe5f49558a71fc46594a370";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rostest ];
  propagatedBuildInputs = [ boost nodelet rosbash roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple script to write simple launch files
    that can easily switch between running nodelets together or as
    standalone nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
