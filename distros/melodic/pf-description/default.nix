
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-pf-description";
  version = "1.2.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PepperlFuchs";
        repo = "pf_lidar_ros_driver-release";
        rev = "release/melodic/pf_description/1.2.0-2";
        sha256 = "sha256-Kur/IEgrsr0yInyUTpVwzW2ggO/tnlUITMr6PuaG340=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pf_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
