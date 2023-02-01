
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-points-preprocessor";
  version = "1.14.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "core_perception-release";
        rev = "release/melodic/points_preprocessor/1.14.15-1";
        sha256 = "sha256-hJMt8UNuVGoyY4gbhfZpiaXii4hrSAOWUXWwXtajROQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
