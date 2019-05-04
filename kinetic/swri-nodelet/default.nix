
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, roscpp, rostest, std-msgs, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.8.0-0.tar.gz;
    sha256 = "41ed0cc6a7092c55a2e2b1ee1d7bd756f4e53e81e981ae09a0baec7236fa09f3";
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
