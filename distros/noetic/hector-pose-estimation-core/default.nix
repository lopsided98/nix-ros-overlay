
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geographic-msgs, geometry-msgs, nav-msgs, rosconsole, roscpp, rostime, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-pose-estimation-core";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/noetic/hector_pose_estimation_core/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "82bcb640addfa021a8bd61913060f27e9e2827ddef0f6c9d41fe6664c1ce96ed";
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
