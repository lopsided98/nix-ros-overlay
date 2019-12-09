
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, tf, catkin, nodelet, nav-msgs, hector-pose-estimation-core }:
buildRosPackage {
  pname = "ros-kinetic-hector-pose-estimation";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_pose_estimation/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "4ab12f770bed70b0f14ff7a20463f039d261279c70811b7ea3449ba1a66383b9";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs tf nodelet nav-msgs hector-pose-estimation-core ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs tf nodelet nav-msgs hector-pose-estimation-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_pose_estimation provides the hector_pose_estimation node and the hector_pose_estimation nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
