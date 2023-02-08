
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, networkmanager }:
buildRosPackage {
  pname = "ros-melodic-network-autoconfig";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "LucidOne-release";
        repo = "network_autoconfig";
        rev = "release/melodic/network_autoconfig/0.1.1-2";
        sha256 = "sha256-vgn2TCTExrx+QkX8Cu/5wQ0u14cednT+6/D+TKT+lg0=";
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
