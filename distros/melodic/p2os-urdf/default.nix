
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, p2os-driver, p2os-msgs, sensor-msgs, std-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-p2os-urdf";
  version = "2.1.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "allenh1";
        repo = "p2os-release";
        rev = "release/melodic/p2os_urdf/2.1.1-3";
        sha256 = "sha256-Y/86ZHYGfE8lb2i3pLGC+JvllQWNvInTLEWmHY7Ter4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs kdl-parser p2os-driver p2os-msgs sensor-msgs std-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
