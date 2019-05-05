
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.8-0.tar.gz;
    sha256 = "22a962f2463d4a60fa0caefe4377195f0f294481af0736f68d50034461648844";
  };

  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
