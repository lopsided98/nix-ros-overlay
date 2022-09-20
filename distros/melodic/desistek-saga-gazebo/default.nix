
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desistek-saga-control, desistek-saga-description }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_gazebo/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "534d7e4e5fb0ab7d099d6e20561f3ac9275f98a06e13e59ca92b1b0114fb2911";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ desistek-saga-control desistek-saga-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
