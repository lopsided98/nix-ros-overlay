
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geographic-msgs, geometry-msgs, nav-msgs, rosconsole, roscpp, rostime, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-pose-estimation-core";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_localization-release";
        rev = "release/melodic/hector_pose_estimation_core/0.3.0-1";
        sha256 = "sha256-RuZ+pHvJKdUyFrAeQfNSJ3cZHbKjAt+L/1euKXCVbac=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen geographic-msgs geometry-msgs nav-msgs rosconsole roscpp rostime sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation_core is the core package of the hector_localization stack. It contains the Extended Kalman Filter (EKF)
    that estimates the 6DOF pose of the robot. hector_pose_estimation can be used either as a library, as a nodelet or as a standalone node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
