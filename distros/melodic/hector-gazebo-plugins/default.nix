
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gazebo, gazebo-dev, gazebo-ros, geographic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo-plugins";
  version = "0.5.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_gazebo-release";
        rev = "release/melodic/hector_gazebo_plugins/0.5.4-1";
        sha256 = "sha256-4c+jJP00hi1Xmns+loZX4THAkQ48w1x2ZanWxd22pIE=";
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
