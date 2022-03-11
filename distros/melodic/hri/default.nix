
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hri";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/melodic/hri/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "be2ec0e8fe1e453b9ee5e53dd7b47bbaf0b6b8594aac0ddfd5c2d8c33d51c20c";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
