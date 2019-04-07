
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, nodelet, tf, hector-pose-estimation-core, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-pose-estimation";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_pose_estimation/0.3.0-0.tar.gz;
    sha256 = "4ab12f770bed70b0f14ff7a20463f039d261279c70811b7ea3449ba1a66383b9";
  };

  buildInputs = [ nav-msgs nodelet sensor-msgs tf message-filters hector-pose-estimation-core geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs nodelet sensor-msgs tf message-filters hector-pose-estimation-core geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation provides the hector_pose_estimation node and the hector_pose_estimation nodelet.'';
    #license = lib.licenses.BSD;
  };
}
