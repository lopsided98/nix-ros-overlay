
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, dynamic-reconfigure, geometry-msgs, image-geometry, laser-filters, laser-geometry, map-laser, message-filters, people-msgs, people-tracking-filter, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-leg-detector";
  version = "1.4.0-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OSUrobotics";
        repo = "people-release";
        rev = "release/melodic/leg_detector/1.4.0-4";
        sha256 = "sha256-n1DBRrwRvzl8Ze+pusHO/CNpL0MfFWiulK04iGE1hVQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ bfl dynamic-reconfigure geometry-msgs image-geometry laser-filters laser-geometry map-laser message-filters people-msgs people-tracking-filter roscpp sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Leg Detector using a machine learning approach to find leg-like patterns of laser scanner readings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
