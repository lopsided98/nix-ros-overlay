
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "ed736b2ad7fad21b829983576a2a14ac1ccd302b0cd63cf4e24298183ae046ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
