
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rosbash, nodelet, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "41ec954bf743cc13d7c56c37a3cde09afb2ed9d62f98384bbab611f7c867aadb";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs nodelet roscpp ];
  checkInputs = [ rosbash rostest ];
  propagatedBuildInputs = [ rosbash std-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple script to write simple launch files
    that can easily switch between running nodelets together or as
    standalone nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
