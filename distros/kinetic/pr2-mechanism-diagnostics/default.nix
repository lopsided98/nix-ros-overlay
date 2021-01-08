
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-msgs, diagnostic-updater, pr2-mechanism-model, pr2-mechanism-msgs, roscpp, rospy, rostest, std-msgs, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-diagnostics";
  version = "1.8.17";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_mechanism_diagnostics/1.8.17-0.tar.gz";
    name = "1.8.17-0.tar.gz";
    sha256 = "e460ffa727c3e8f1e15d40e99fc784516d1afe49f01fad8254865e926a18c7fa";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater pr2-mechanism-model pr2-mechanism-msgs roscpp rospy std-msgs std-srvs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The `pr2_mechanism_diagnostics` node subscribes to `mechanism_statistics` and publishes diagnostics data for joints and controllers on `/diagnostics`.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
