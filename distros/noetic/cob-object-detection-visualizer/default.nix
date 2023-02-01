
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-object-detection-visualizer";
  version = "0.6.19-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_perception_common-release";
        rev = "release/noetic/cob_object_detection_visualizer/0.6.19-1";
        sha256 = "sha256-kVjrVeuefnnSMhngiLLH/Rgona7WK6bUSNVUk3J/9KU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package visualizes the object detection result.'';
    license = with lib.licenses; [ asl20 ];
  };
}
