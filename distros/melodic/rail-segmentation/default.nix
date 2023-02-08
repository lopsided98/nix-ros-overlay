
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, message-generation, message-runtime, pcl-conversions, pcl-ros, pkg-config, rail-manipulation-msgs, roscpp, roslib, sensor-msgs, std-srvs, tf, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rail-segmentation";
  version = "0.1.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gt-rail-release";
        repo = "rail_segmentation";
        rev = "release/melodic/rail_segmentation/0.1.15-1";
        sha256 = "sha256-lMh+bogc6kaORTZ6K9WGeJKwfPI/kwfXuU8f4u+IrE0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config ];
  propagatedBuildInputs = [ boost libyamlcpp message-runtime pcl-conversions pcl-ros rail-manipulation-msgs roscpp roslib sensor-msgs std-srvs tf tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
