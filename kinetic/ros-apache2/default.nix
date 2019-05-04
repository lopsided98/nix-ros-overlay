
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, apacheHttpd }:
buildRosPackage {
  pname = "ros-kinetic-ros-apache2";
  version = "1.0.7";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/ros_apache2/1.0.7-0.tar.gz;
    sha256 = "42be0833b58723bec28d51114c5e0a2e3ac7a64fda41807e2fe4529e26c0300c";
  };

  buildInputs = [ apacheHttpd ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_apache2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
