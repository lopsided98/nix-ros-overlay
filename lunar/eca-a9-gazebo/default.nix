
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eca-a9-description, eca-a9-control }:
buildRosPackage {
  pname = "ros-lunar-eca-a9-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/eca_a9-release/archive/release/lunar/eca_a9_gazebo/0.1.6-0.tar.gz;
    sha256 = "1974fd6aaaf587234996f6df468c0645f16ee7642da20a4708e4062d8229bb33";
  };

  propagatedBuildInputs = [ eca-a9-description eca-a9-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
