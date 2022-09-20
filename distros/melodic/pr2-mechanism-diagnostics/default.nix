
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-msgs, diagnostic-updater, pr2-mechanism-model, pr2-mechanism-msgs, roscpp, rospy, rostest, std-msgs, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-diagnostics";
  version = "1.8.21-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism_diagnostics/1.8.21-1.tar.gz";
    name = "1.8.21-1.tar.gz";
    sha256 = "3badb0392210f96cb78d66bbc1b3e6fd5f1d4b07d162612225c02529d66ad395";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater pr2-mechanism-model pr2-mechanism-msgs roscpp rospy std-msgs std-srvs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The `pr2_mechanism_diagnostics` node subscribes to `mechanism_statistics` and publishes diagnostics data for joints and controllers on `/diagnostics`.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
