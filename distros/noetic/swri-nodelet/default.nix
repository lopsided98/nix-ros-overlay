
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nodelet, rosbash, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-nodelet";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_nodelet/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "f2313fe9e60c8829d3ed06dcc54cffcf9df9aef84b600e8db08155231bbf4e3c";
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
