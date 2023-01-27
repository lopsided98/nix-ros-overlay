
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-hri";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/melodic/hri/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "52ca083419f46049a42ef57183a4a99b20cbf408c5059e9a60c329a7b6d22de6";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
