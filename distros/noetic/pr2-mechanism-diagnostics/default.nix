
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-msgs, diagnostic-updater, pr2-mechanism-model, pr2-mechanism-msgs, roscpp, rospy, rostest, std-msgs, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-noetic-pr2-mechanism-diagnostics";
  version = "1.8.20-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/pr2_mechanism_diagnostics/1.8.20-1.tar.gz";
    name = "1.8.20-1.tar.gz";
    sha256 = "de4e8793e5c1bd642890966d940651c6c80d5245106228ee6a8917041b5d682c";
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
