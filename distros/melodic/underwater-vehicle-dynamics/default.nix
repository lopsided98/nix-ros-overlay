
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rospy, sensor-msgs, std-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-underwater-vehicle-dynamics";
  version = "1.4.2-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "underwater_simulation-release";
        rev = "release/melodic/underwater_vehicle_dynamics/1.4.2-3";
        sha256 = "sha256-n9eIj2/lZMNvqrp9pJcQceeS0m1rkM5sindXZHrFEEY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rospy sensor-msgs std-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
