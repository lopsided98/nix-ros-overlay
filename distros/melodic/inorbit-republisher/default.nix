
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-inorbit-republisher";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "inorbit-ai";
        repo = "ros_inorbit_samples-release";
        rev = "release/melodic/inorbit_republisher/0.2.5-1";
        sha256 = "sha256-Bv0QQ3O6DuPCm+5E4cCDRiU+Wc4GuVMtS/BCP879aYk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.pyyaml pythonPackages.rospkg roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
