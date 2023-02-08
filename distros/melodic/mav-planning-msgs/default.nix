
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, mav-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-mav-planning-msgs";
  version = "3.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "mav_comm-release";
        rev = "release/melodic/mav_planning_msgs/3.3.2-0";
        sha256 = "54bf3cce82bd9924dc58e2cd95da0314127ef73818f625b56fb687ff0fe694d0";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen geometry-msgs mav-msgs message-generation message-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to MAV planning, especially polynomial planning.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
