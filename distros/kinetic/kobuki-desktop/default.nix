
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-dashboard, kobuki-gazebo, kobuki-gazebo-plugins, kobuki-qtestsuite, kobuki-rviz-launchers }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-desktop";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_desktop/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "9c146882399b24a957c9c123648a3a12fdc90009de7ceff55ee2ecc3745ad641";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-dashboard kobuki-gazebo kobuki-gazebo-plugins kobuki-qtestsuite kobuki-rviz-launchers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualisation and simulation tools for Kobuki'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
