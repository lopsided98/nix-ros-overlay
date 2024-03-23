
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, microstrain-inertial-msgs, roscpp, roslint, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-examples";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_examples/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "1a6e66fcf5ba8f35c4b21067138970fcafd85ff51a3e95d7b7dd47b3705c5180";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ cmake-modules microstrain-inertial-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).";
    license = with lib.licenses; [ mit ];
  };
}
