
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, iiwa-description }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-gazebo";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_gazebo/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "37a357aa4f7bf6d98fdfb645baa017257b2208f158524fecfcc4ecf99bed317c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros iiwa-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package allows to load a KUKA LBR IIWA robot onto Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
