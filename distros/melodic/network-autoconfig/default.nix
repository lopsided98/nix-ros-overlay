
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, networkmanager }:
buildRosPackage {
  pname = "ros-melodic-network-autoconfig";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/LucidOne-release/network_autoconfig/archive/release/melodic/network_autoconfig/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "e8c7683b24422a998c5e8f22bdec456f390bfd2ea7726ab051785b80b84907b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ networkmanager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Networking Autoconfiguration'';
    license = with lib.licenses; [ mit "Apache" ];
  };
}
