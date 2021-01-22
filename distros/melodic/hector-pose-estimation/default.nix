
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-pose-estimation-core, message-filters, nav-msgs, nodelet, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-hector-pose-estimation";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/melodic/hector_pose_estimation/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "769e253c6396b165b40b40e75a06f48d5401ff474795308d249dfbf60ce21f67";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs hector-pose-estimation-core message-filters nav-msgs nodelet sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation provides the hector_pose_estimation node and the hector_pose_estimation nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
