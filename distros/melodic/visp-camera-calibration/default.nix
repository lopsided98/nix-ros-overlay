
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rqt-console, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-melodic-visp-camera-calibration";
  version = "0.13.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "lagadic";
        repo = "vision_visp-release";
        rev = "release/melodic/visp_camera_calibration/0.13.0-1";
        sha256 = "sha256-ddC64899+b5KmMFXInvkkF0tgfXQbN5YCot7OqI4NQQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs message-generation message-runtime roscpp rqt-console sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
