
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, python-orocos-kdl, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-rover-zero-driver";
  version = "1.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "rr_openrover_stack-release";
        rev = "release/melodic/rr_rover_zero_driver/1.1.1-1";
        sha256 = "sha256-c0MbK23u32blWiF6vBkCKLX151fQ0ZPFyhFOrOowpns=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs nav-msgs python-orocos-kdl pythonPackages.pyserial rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rover_zero_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
