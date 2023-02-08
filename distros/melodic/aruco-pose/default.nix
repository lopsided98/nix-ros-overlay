
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-publisher, image-transport, message-generation, message-runtime, nodelet, ros-pytest, roscpp, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-pose";
  version = "0.21.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "clover-release";
        rev = "release/melodic/aruco_pose/0.21.2-1";
        sha256 = "sha256-YQna+5/hJHU8tefG6ZyHsvRdj8oWDD6mMbsZ/ISzWm0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher ros-pytest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs image-transport message-generation message-runtime nodelet roscpp rostest sensor-msgs std-msgs tf tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Positioning with ArUco markers'';
    license = with lib.licenses; [ mit ];
  };
}
