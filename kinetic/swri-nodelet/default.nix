
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, roscpp, rostest, std-msgs, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-swri-nodelet";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_nodelet/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "a3b729415777431402e30e037d20a9a377f25423593d4982535cd7346ab2501a";
  };

  buildType = "catkin";
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
