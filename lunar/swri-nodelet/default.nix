
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, roscpp, rostest, std-msgs, nodelet }:
buildRosPackage {
  pname = "ros-lunar-swri-nodelet";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_nodelet/2.8.0-0.tar.gz;
    sha256 = "4577bb5ee644928c43871f0f6f94de8129c3205a5c0651b0c9974dbe5c1eda8c";
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
