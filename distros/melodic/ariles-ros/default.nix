
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, libyamlcpp, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ariles-ros";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/asherikov/ariles-release/archive/release/melodic/ariles_ros/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "7a898961b24ccb4b8974efe590485869432b9f5471596a6e3ce735a9d0f71c2e";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost eigen libyamlcpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin package Ariles serialization/configuration library'';
    license = with lib.licenses; [ asl20 ];
  };
}
