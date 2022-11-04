
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gazebo, gazebo-dev, gazebo-ros, geographic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo-plugins";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_gazebo_plugins/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "a215cd06c58b2ab21a634c69f5debcfff0f189c92faf6e6371fe1392610a511a";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo gazebo-ros geographic-msgs geometry-msgs message-runtime nav-msgs roscpp std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_plugins provides gazebo plugins from Team Hector.
     Currently it contains a 6wd differential drive plugin, an IMU sensor plugin,
     an earth magnetic field sensor plugin, a GPS sensor plugin and a
     sonar ranger plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
