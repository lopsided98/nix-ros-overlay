
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-hri";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/melodic/hri/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "df5135c9f712e7f8240db3715f4c517438c90c322a77507eb32c8a5a39eea499";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
