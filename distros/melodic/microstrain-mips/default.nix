
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-aggregator, diagnostic-updater, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-microstrain-mips";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "microstrain_mips-release";
        rev = "release/melodic/microstrain_mips/0.0.3-1";
        sha256 = "sha256-QLirxUUu5CVufiyU0cW0U1p11kJp6dq6kLP/F0T+WNQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  propagatedBuildInputs = [ cmake-modules diagnostic-aggregator diagnostic-updater geometry-msgs message-runtime nav-msgs roscpp sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_mips package provides a driver for the LORD/Microstrain 3DM_GX5_XX GPS-aided IMU sensor.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
