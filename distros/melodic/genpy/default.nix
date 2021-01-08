
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "5b57fb2edba204a8799a619648107ac44a857bf5f94c65a5505a4beca54716f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
