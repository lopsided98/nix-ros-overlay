
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, mavros-commands, mavros-msgs, roscpp, std-msgs, uav-msgs }:
buildRosPackage {
  pname = "ros-melodic-navigation-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/navigation_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "76d99b2662a3d0eac4b9caa7e7a2eb22947ee9955c44669a7349238e0967f1fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs mavros-commands mavros-msgs roscpp std-msgs uav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Navigation Controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
