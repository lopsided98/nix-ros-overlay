
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-publisher-tutorial";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_tutorials-release";
        rev = "release/melodic/point_cloud_publisher_tutorial/0.2.4-1";
        sha256 = "sha256-JyrIyt8qDQu56k/gY/J0UB+zjivZS2qYA2nDt5JCTy8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The point_cloud_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
