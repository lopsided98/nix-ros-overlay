
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosdoc-lite";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosdoc_lite-release/archive/release/noetic/rosdoc_lite/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "f6c654ab10e56b36bc7ff84ae7de6126011c44ebec7c3b9e14c4018643bd15c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ doxygen genmsg python3Packages.catkin-pkg python3Packages.kitchen python3Packages.pyyaml python3Packages.rospkg python3Packages.sphinx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This ROS package wraps documentation tools like doxygen, sphinx,
    and epydoc, making it convenient to generate ROS package
    documentation.

    It also generates online documentation for the ROS wiki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
