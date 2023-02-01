
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, gtk2, image-transport, message-filters, message-generation, nodelet, rosconsole, roscpp, rostest, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-view";
  version = "1.15.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "image_pipeline-release";
        rev = "release/melodic/image_view/1.15.2-1";
        sha256 = "sha256-JutAY2sz/XQnZu1VERzYRBuGKvGx1OrScDgnQt10cqE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation sensor-msgs stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge dynamic-reconfigure gtk2 image-transport message-filters nodelet rosconsole roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
