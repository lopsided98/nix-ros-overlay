
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hector-pose-estimation-core, message-filters, nav-msgs, nodelet, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-pose-estimation";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/noetic/hector_pose_estimation/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "063f74d15fd503381172f8811622a54def961b5372b423807a181f7c012d9edf";
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
