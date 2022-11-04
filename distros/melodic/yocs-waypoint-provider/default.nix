
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libyamlcpp, roscpp, visualization-msgs, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-waypoint-provider";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_waypoint_provider/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "af1f87405e022fbc50096287d8b679f0198b09307dc22b04aa1b8a3bcfc4f9f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs libyamlcpp roscpp visualization-msgs yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parse a multiple poses from yaml and provide as topic and service. This package is highly inspired by yocs_waypoints_navi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
