
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, geometry-msgs, radar-pa-msgs, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-radar-pa";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_radar-release/archive/release/kinetic/radar_pa/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cc6e1e6843f9c93530d557e0cadd37feb83e0bc1483f35f06772134b9c83bb13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs geometry-msgs radar-pa-msgs rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut radar package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
