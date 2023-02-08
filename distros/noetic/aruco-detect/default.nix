
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-depth-image-transport, compressed-image-transport, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, python3Packages, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, theora-image-transport, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-detect";
  version = "0.12.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UbiquityRobotics-release";
        repo = "fiducials-release";
        rev = "release/noetic/aruco_detect/0.12.0-1";
        sha256 = "sha256-QDMNoy3U9niXKbNEO7gWQRh7pYx044yX4Odb4B4oEZ0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport cv-bridge dynamic-reconfigure fiducial-msgs image-transport python3Packages.cairosvg python3Packages.joblib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros theora-image-transport vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
