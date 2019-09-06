
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, catkin, gazeboSimulator, gazebo-dev, roscpp, nav-msgs, message-generation, message-runtime, dynamic-reconfigure, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo-plugins";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_gazebo_plugins/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "950bd57e9157767ab5699a7b93eee1083a484633b26f8931b433c71755716159";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs roscpp gazebo-dev message-generation nav-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ gazebo-ros std-srvs gazeboSimulator.gazebo roscpp nav-msgs message-runtime dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_plugins provides gazebo plugins from Team Hector.
     Currently it contains a 6wd differential drive plugin, an IMU sensor plugin,
     an earth magnetic field sensor plugin, a GPS sensor plugin and a
     sonar ranger plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
