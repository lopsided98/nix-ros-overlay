
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, networkmanager, catkin }:
buildRosPackage {
  pname = "ros-melodic-network-autoconfig";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/LucidOne-release/network_autoconfig/archive/release/melodic/network_autoconfig/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "7be2b646f3f35fb4dbb3060150cadf0487a6ece2cb5985650088c22cf6aa1747";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ networkmanager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Networking Autoconfiguration'';
    license = with lib.licenses; [ mit "Apache-1.0" ];
  };
}
