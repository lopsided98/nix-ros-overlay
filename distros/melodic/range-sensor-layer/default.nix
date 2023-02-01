
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, pluginlib, roscpp, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-range-sensor-layer";
  version = "0.5.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "navigation_layers_release";
        rev = "release/melodic/range_sensor_layer/0.5.0-0";
        sha256 = "sha256-8SiulEXW0dKWiBN9w64+zEtibfr1LHau3juuhKAx3nw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ angles costmap-2d dynamic-reconfigure geometry-msgs pluginlib roscpp rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation Layer for Range sensors like sonar and IR'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
