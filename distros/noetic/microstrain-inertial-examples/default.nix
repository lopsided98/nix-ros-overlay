
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, microstrain-inertial-msgs, roscpp, roslint, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "71512057db17370a287afd6bb643545091638c887b13ddcabc95fbe340eef5d2";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ cmake-modules microstrain-inertial-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
