
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gazebo, gazebo-dev, gazebo-ros, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo-plugins";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo_plugins/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "18434dc1c9a65c79b8eee009392d5c198b81f2a0aceae3f47015217a5a6882e1";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo gazebo-ros geometry-msgs message-runtime nav-msgs roscpp std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_plugins provides gazebo plugins from Team Hector.
     Currently it contains a 6wd differential drive plugin, an IMU sensor plugin,
     an earth magnetic field sensor plugin, a GPS sensor plugin and a
     sonar ranger plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
