
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, control-toolbox, geometry-msgs, joy-teleop, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, rosparam-shortcuts, rostest, sensor-msgs, spacenav-node, std-msgs, std-srvs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-servo";
  version = "1.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit-release";
        rev = "release/melodic/moveit_servo/1.0.11-1";
        sha256 = "sha256-PXnXFuSyHlXCjeS3JWtzHdX5kqO22Qe8NPiy7MGvjmA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ control-msgs control-toolbox geometry-msgs joy-teleop moveit-msgs moveit-ros-planning-interface rosparam-shortcuts sensor-msgs spacenav-node std-msgs std-srvs tf2-eigen trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
