
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-msgs, diagnostic-updater, pr2-mechanism-model, pr2-mechanism-msgs, roscpp, rospy, rostest, std-msgs, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-diagnostics";
  version = "1.8.20-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism_diagnostics/1.8.20-1.tar.gz";
    name = "1.8.20-1.tar.gz";
    sha256 = "233eefb27b334851a0fbc9e9d13215934b09f9ba90c7cc304a9188e24f41eea8";
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
