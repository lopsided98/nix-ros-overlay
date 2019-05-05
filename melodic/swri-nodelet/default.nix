
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, roscpp, rostest, std-msgs, nodelet }:
buildRosPackage {
  pname = "ros-melodic-swri-nodelet";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_nodelet/2.8.0-0.tar.gz;
    sha256 = "028628e0bc364e9be5f608663cf49c988db0599bad0a534b9f1d4f707749a5a0";
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
