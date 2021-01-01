
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-mcmillan-airfield";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/kinetic/mcmillan_airfield/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "65443f277aa1e7221876768c3477e067206ac4826f9ccd136e3fb509212c49e2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcmillan_airfield package'';
    license = with lib.licenses; [ asl20 ];
  };
}
