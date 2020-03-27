
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-plugins, gazebo-ros, gazeboSimulator, geometry-msgs, roscpp, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosflight-sim";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_sim/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "bb6c6a13d3319d143524cda687befd926a4e1f3e970aaf7debbcad4639ea686e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen gazebo-plugins gazebo-ros gazeboSimulator.gazebo geometry-msgs roscpp rosflight-firmware rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
