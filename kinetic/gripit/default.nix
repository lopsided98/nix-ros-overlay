
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-gripit";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/Yannick-Oderri/gripit-release/archive/release/kinetic/gripit/0.0.3-0.tar.gz;
    sha256 = "2f714c48e4cb7e7ef7c72ff12a132dde97c4973ee5fb63bd26c2506378ffbf54";
  };

  buildInputs = [ pythonPackages.future pythonPackages.numpy pythonPackages.scikitimage rospy ];
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.future pythonPackages.rosdep pythonPackages.scikitimage rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripit package'';
    license = with lib.licenses; [ mit ];
  };
}
