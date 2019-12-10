
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "c34ac21b89413514766134f7f7c44b2f59902b0f8cc7c0c751455da86696348b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
