
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-urg-stamped";
  version = "0.0.14-r2";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/melodic/urg_stamped/0.0.14-2.tar.gz";
    name = "0.0.14-2.tar.gz";
    sha256 = "410fd767349ad407102987a508df0e0af8a513d785e34b78bc7daf9936bfe822";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
