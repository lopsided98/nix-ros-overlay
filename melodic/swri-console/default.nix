
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rosbag-storage, catkin, qt5, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-console";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_console-release/archive/release/melodic/swri_console/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "3b316832e42c12ebf733b8f9f299ad56326bdeea281c36e1323dfe6c195a4cfe";
  };

  buildType = "catkin";
  buildInputs = [ boost rosbag-storage qt5.qtbase roscpp rosgraph-msgs ];
  propagatedBuildInputs = [ boost rosbag-storage qt5.qtbase roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
