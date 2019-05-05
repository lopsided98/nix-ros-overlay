
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, desistek-saga-description, catkin, desistek-saga-control }:
buildRosPackage {
  pname = "ros-lunar-desistek-saga-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/lunar/desistek_saga_gazebo/0.3.2-0.tar.gz;
    sha256 = "4d9b123f38be412815fbe854dadef1cfb201f3a1912f30de0364f7cdfd374d8b";
  };

  propagatedBuildInputs = [ desistek-saga-description desistek-saga-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
