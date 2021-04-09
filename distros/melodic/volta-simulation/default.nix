
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, roslaunch, rostopic, volta-control, volta-description }:
buildRosPackage {
  pname = "ros-melodic-volta-simulation";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta_simulation-release/archive/release/melodic/volta_simulation/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "8c63736709099eadd7f623a54b726fe8df936d39179d4121c255b70f6fdc389d";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins rostopic volta-control volta-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_simulation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
