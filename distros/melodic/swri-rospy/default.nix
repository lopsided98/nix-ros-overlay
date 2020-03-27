
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "37b36b0d00cf755e8944820a80372f7f6d08a93700d3fe0c8197ad823ae1513f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides added functionaliy on top of rospy, including a
  single-threaded callback queue.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
