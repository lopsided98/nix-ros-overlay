
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, roslaunch, rostopic, volta-control, volta-description }:
buildRosPackage {
  pname = "ros-melodic-volta-simulation";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta_simulation-release/archive/release/melodic/volta_simulation/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "8819262427c6cb04c561d9148ddd31788a6ec2da49c21972c58b5f9403270e09";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins rostopic volta-control volta-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_simulation package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
