
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, rosbag, roscpp, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosgraph-msgs, rospy, sensor-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosflight-utils";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosflight";
        repo = "rosflight-release";
        rev = "release/melodic/rosflight_utils/1.3.1-1";
        sha256 = "sha256-18n4x/Sx44od25W3jFtziwQKYrSdtcHCKvY/ykAkDW8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs rosbag roscpp rosflight rosflight-firmware rosflight-msgs rosflight-sim rosgraph-msgs rospy sensor-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
