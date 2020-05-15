
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-nodelet";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_nodelet/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "e586fda960d48f7c33028685431d4a90abf646986a5b447ef8f30364ad615449";
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
