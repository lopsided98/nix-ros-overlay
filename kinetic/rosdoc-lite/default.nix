
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin, pythonPackages, doxygen }:
buildRosPackage {
  pname = "ros-kinetic-rosdoc-lite";
  version = "0.2.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosdoc_lite-release/archive/release/kinetic/rosdoc_lite/0.2.9-0.tar.gz;
    sha256 = "93c163e83ed1949333f042e4ae4fc43114707bed864db7d47faf3a07276b8acc";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.kitchen doxygen pythonPackages.pyyaml pythonPackages.sphinx genmsg pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This ROS package wraps documentation tools like doxygen, sphinx,
    and epydoc, making it convenient to generate ROS package
    documentation.

    It also generates online documentation for the ROS wiki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
