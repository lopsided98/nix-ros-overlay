
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosjava-bootstrap, genmsg, pythonPackages, catkin, rosjava-build-tools }:
buildRosPackage {
  pname = "ros-kinetic-genjava";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/rosjava-release/genjava-release/archive/release/kinetic/genjava/0.3.4-0.tar.gz";
    name = "0.3.4-0.tar.gz";
    sha256 = "a19f7d15fbd106a52180a34422c07cfd02e53070dee24380d2ed8c80678207d5";
  };

  buildType = "catkin";
  buildInputs = [ rosjava-bootstrap genmsg pythonPackages.rospkg rosjava-build-tools pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ rosjava-bootstrap genmsg pythonPackages.rospkg rosjava-build-tools pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Java ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
