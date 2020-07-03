
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-nodelet";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_nodelet/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "e399f8e3f45b1f10a8b5211bcdcb36a2bb36a18828bc22173ca51370691e5f04";
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
