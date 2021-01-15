
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-plot-tools";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/srv/srv_tools-release/archive/release/kinetic/plot_tools/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "749c5e70c3d85169a8dcb63ee406b9727028609a11ce7ab1d4a7679ee0c7ac35";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''plot_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
