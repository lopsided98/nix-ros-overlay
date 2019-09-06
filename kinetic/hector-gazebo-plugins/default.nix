
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, catkin, gazeboSimulator, roscpp, nav-msgs, message-generation, message-runtime, dynamic-reconfigure, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-gazebo-plugins";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo_plugins/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "a55813892b189be9f5b0adf06d1e981fe8aca34e67c2abd58d92f8d278c1f153";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs roscpp message-generation nav-msgs dynamic-reconfigure std-msgs tf gazeboSimulator.gazebo7 geometry-msgs ];
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
