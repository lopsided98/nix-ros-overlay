
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, nav-msgs, roslaunch, rospy, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-route-network";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-geographic-info";
        repo = "open_street_map-release";
        rev = "release/melodic/route_network/0.2.5-1";
        sha256 = "sha256-FHPpVgDf+lM/l8bcH1hUpjieW5UKqXkEPd4YL0kqar0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs nav-msgs rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
