
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roslint, rospy, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-easy-markers";
  version = "0.2.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "wu_ros_tools";
        rev = "release/melodic/easy_markers/0.2.6-1";
        sha256 = "sha256-zg9NVElCKsMvSn6ymWj4DY/8Id+B30ZFqOGDKT8uG7o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rospy tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
