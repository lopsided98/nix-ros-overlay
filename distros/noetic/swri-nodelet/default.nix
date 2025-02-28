
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-nodelet";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_nodelet/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "35da65a27c3e90d48fe0d54c07d4084da81a8d091e68ce48cd757abe0bbc5086";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbash rostest ];
  propagatedBuildInputs = [ boost nodelet rosbash roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides a simple script to write simple launch files
    that can easily switch between running nodelets together or as
    standalone nodes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
