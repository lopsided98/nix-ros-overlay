
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, networkmanager }:
buildRosPackage {
  pname = "ros-kinetic-network-autoconfig";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/LucidOne-release/network_autoconfig/archive/release/kinetic/network_autoconfig/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0dac1aedb32542990c878ea9c0abac27b81efbc0775bf40e8b0b4aebbeb10cc2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ networkmanager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Networking Autoconfiguration'';
    license = with lib.licenses; [ mit "Apache-1.0" ];
  };
}
