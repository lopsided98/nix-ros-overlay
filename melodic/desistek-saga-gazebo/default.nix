
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, desistek-saga-description, catkin, desistek-saga-control }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_gazebo/0.3.2-0.tar.gz;
    sha256 = "534d7e4e5fb0ab7d099d6e20561f3ac9275f98a06e13e59ca92b1b0114fb2911";
  };

  propagatedBuildInputs = [ desistek-saga-description desistek-saga-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the Desistek SAGA ROV underwater vehicle'';
    #license = lib.licenses.Apache-2.0;
  };
}
