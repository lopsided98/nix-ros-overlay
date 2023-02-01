
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ibeo-core, ibeo-msgs, network-interface, pcl-ros, roscpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ibeo-lux";
  version = "2.0.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "astuff";
        repo = "ibeo_lux-release";
        rev = "release/melodic/ibeo_lux/2.0.1-0";
        sha256 = "sha256-dUIQxcUON4deem4TwBKoYmCRgpk2xkF73iln3qkN1MM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs ibeo-core ibeo-msgs network-interface pcl-ros roscpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    license = with lib.licenses; [ mit ];
  };
}
