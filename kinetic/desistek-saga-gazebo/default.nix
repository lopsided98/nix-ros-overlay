
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, desistek-saga-description, catkin, desistek-saga-control }:
buildRosPackage {
  pname = "ros-kinetic-desistek-saga-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/kinetic/desistek_saga_gazebo/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "281b8dff95b39b507b2f733de3836d08897153e948786a8e06dce2ca81738ea5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ desistek-saga-description desistek-saga-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
