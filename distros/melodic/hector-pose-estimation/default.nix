
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-pose-estimation-core, message-filters, nav-msgs, nodelet, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-pose-estimation";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_localization-release";
        rev = "release/melodic/hector_pose_estimation/0.3.0-1";
        sha256 = "sha256-5pO7UF4/dj36Bjx+9qiclY7Q5tYWtHjvuDNimsGaxUo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs hector-pose-estimation-core message-filters nav-msgs nodelet sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation provides the hector_pose_estimation node and the hector_pose_estimation nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
