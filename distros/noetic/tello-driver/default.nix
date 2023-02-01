
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-tello-driver";
  version = "1.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JdeRobot";
        repo = "drones-release";
        rev = "release/noetic/tello_driver/1.4.2-1";
        sha256 = "sha256-5SCNHLUDo5i/DMiohHpQ9Fkg7xnn6+eU8kpNQPP4cZI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mavros mavros-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tello_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
