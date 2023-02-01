
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, pcl-conversions, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-scan-to-cloud-converter";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "scan_tools-release";
        rev = "release/noetic/scan_to_cloud_converter/0.3.3-1";
        sha256 = "sha256-PbqPH8KR7i6Einlcettf0P73PN7E67K96puohcJPUn4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts LaserScan to PointCloud messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
