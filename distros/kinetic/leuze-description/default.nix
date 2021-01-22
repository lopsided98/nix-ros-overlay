
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-leuze-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/kinetic/leuze_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6eff019de976334d24a35308ae37f8895d11feb18aa4e98bc1f855e240396848";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains .'';
    license = with lib.licenses; [ asl20 ];
  };
}
