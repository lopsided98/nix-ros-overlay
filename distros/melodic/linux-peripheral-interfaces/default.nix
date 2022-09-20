
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laptop-battery-monitor, libsensors-monitor }:
buildRosPackage {
  pname = "ros-melodic-linux-peripheral-interfaces";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/melodic/linux_peripheral_interfaces/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3e2aabda03b8d3e55b36dd14b76ad3e11e2e3e3a4e0ac2ea5ecbffa512de6aba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laptop-battery-monitor libsensors-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple scripts which help utilise, monitor, interact with computer
     hardware abstracted by a linux OS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
