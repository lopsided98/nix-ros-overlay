
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.8.0-0.tar.gz;
    sha256 = "ef28b82f93c59cc85483350c15bc84017df23124d9a81a319f7950d6211de416";
  };

  propagatedBuildInputs = [ std-msgs std-srvs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides added functionaliy on top of rospy, including a
  single-threaded callback queue.'';
    #license = lib.licenses.BSD;
  };
}
