
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, lcm, message-filters, nodelet, roscpp, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds-lcm";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds_lcm/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "60295fe3ef2f370ac7fcaf4bd9d1e2d51a2ea92bdc92f2091236815f4157a870";
  };

  buildType = "catkin";
  buildInputs = [ catkin lcm.dev ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dataspeed-pds-msgs lcm message-filters nodelet roscpp roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Interface to the Dataspeed Inc. Intelligent Power Distribution System (iPDS) via LCM";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
