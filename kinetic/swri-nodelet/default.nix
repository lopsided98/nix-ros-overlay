
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, roscpp, rostest, std-msgs, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.9.0-1.tar.gz;
    sha256 = "30a030302ee3ee9e4fbba9b79a068e43473c7f708f3a9d3aa2b1130b86a1c9c6";
  };

  buildInputs = [ std-msgs nodelet roscpp ];
  checkInputs = [ rostest rosbash ];
  propagatedBuildInputs = [ std-msgs nodelet rosbash roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple script to write simple launch files
    that can easily switch between running nodelets together or as
    standalone nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
