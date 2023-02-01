
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rplidar-ros";
  version = "1.7.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Slamtec";
        repo = "rplidar_ros-release";
        rev = "release/melodic/rplidar_ros/1.7.0-0";
        sha256 = "sha256-e0knDCrcluTcwjne/xebbhNeVmVFGkQu+Q99hRD+4Ms=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
