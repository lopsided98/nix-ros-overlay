
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, std-srvs, catkin, diagnostic-updater, rostest, std-msgs, urdf, angles, rospy, diagnostic-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-diagnostics";
  version = "1.8.18";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism_diagnostics/1.8.18-0.tar.gz";
    name = "1.8.18-0.tar.gz";
    sha256 = "3d6fbbd7282c6a07b6ea340848aa1fb79444832f19224508ed20fab0e73bf98c";
  };

  buildType = "catkin";
  buildInputs = [ pr2-mechanism-msgs std-srvs diagnostic-updater rostest urdf angles std-msgs diagnostic-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-mechanism-msgs std-srvs diagnostic-msgs diagnostic-updater urdf rospy std-msgs angles roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The `pr2_mechanism_diagnostics` node subscribes to `mechanism_statistics` and publishes diagnostics data for joints and controllers on `/diagnostics`.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
