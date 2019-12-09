
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rosbash, nodelet, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-nodelet";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_nodelet/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "466f6f1a465aa241c65c725fdc715220700e95d6451d37d8ae92d30ad4f18d49";
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
