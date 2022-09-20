
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-mcmillan-airfield";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/melodic/mcmillan_airfield/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "68b3833258188f562362e22fb6e06645950ceace55d877c9a2f651719860152f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcmillan_airfield package'';
    license = with lib.licenses; [ asl20 ];
  };
}
