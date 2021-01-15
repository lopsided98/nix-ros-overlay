
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-laser }:
buildRosPackage {
  pname = "ros-kinetic-laser-filtering";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/kinetic/laser_filtering/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "d11ec8adafb09376a7909cf735fe10bc07bfa8072895797e21c6937c3f63232b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Libraries for filtering specific kinds of laser scans'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
