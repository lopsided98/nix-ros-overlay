
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, leuze-msgs, roscpp, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-leuze-rsl-driver";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa-led";
        repo = "leuze_ros_drivers-release";
        rev = "release/melodic/leuze_rsl_driver/1.0.1-1";
        sha256 = "sha256-14Nqmz92Bm3Quwl2rGGPX9dp8/C2/YYYvDgrg9mBfng=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ angles leuze-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Driver for the Leuze RSL series laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
