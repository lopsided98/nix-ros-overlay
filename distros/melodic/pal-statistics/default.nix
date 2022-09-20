
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, pal-statistics-msgs, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-pal-statistics";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/melodic/pal_statistics/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "e5fd44e5ee34381c90c5beadf22ea46cdab7332b0e168cc1bd802012f34c0cda";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost pal-statistics-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
